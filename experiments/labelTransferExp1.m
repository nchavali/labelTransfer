config.path.featureLoc='/home/gneelima/work/code/labelTransfer/datasets/datasetImageNetVal1/DecafCenter/';
config.path.imListsLoc='/home/gneelima/work/data/output/objectProposals/labelTransfer/';
config.path.databaseLoc='/home/gneelima/work/data/input/objectProposals/labelTransfer/nonflann/';
config.path.nearestNeighbourLoc='/home/gneelima/work/data/intermediate/objectProposals/labelTransfer/nonflann/';
config.list.testList='testIgnoreList.mat';
config.list.trainList='trainIgnoreList.mat';


%%load/build dataset for non flann
saveFile=[config.path.databaseLoc 'database.mat'];

trainImFile=[config.path.imListsLoc config.list.trainList];
testImFile=[config.path.imListsLoc config.list.testList];

featureFile=[config.path.featureLoc '%s.JPEG.mat'];


try
	load(saveFile);
catch
	load(trainImFile);
	dTrain=cell(length(filteredImageIds),1);
	dTrainFeatures=zeros(length(filteredImageIds),4096);

	for i=1:length(filteredImageIds)
		dTrain{i}=filteredImageIds{i};
		load(sprintf(featureFile,filteredImageIds{i}));
		dTrainFeatures(i,:)=data';
	end


	load(testImFile);
	dTest=cell(length(filteredImageIds),1);
	dTestFeatures=zeros(length(filteredImageIds),4096);

	for i=1:length(filteredImageIds)
		dTest{i}=filteredImageIds{i};
		load(sprintf(featureFile,filteredImageIds{i}));
		dTestFeatures(i,:)=data';
	end
save(saveFile,'dTrain','dTest','dTrainFeatures','dTestFeatures');
end

fprintf('****Dataset loading done****\n');
%dataset is loaded, find nearest neighbours..

NN=2000;
%--------------------------------------------------------------------------------------------------------
%   create directory to save the nearest neighbour data
%--------------------------------------------------------------------------------------------------------
NNPATH =config.path.nearestNeighbourLoc ;
if exist(NNPATH,'dir')~=7
    mkdir(NNPATH);
end

%--------------------------------------------------------------------------------------------------------
%   calculate nearest neighbours and save them 
%--------------------------------------------------------------------------------------------------------

for i=1:length(dTest)
	queryIm=dTest{i};
        fprintf('finding nearest neighbours for %s\n',queryIm);
	knn = LMdecafquery(dTestFeatures(i,:), dTrainFeatures);
	knn = knn(1:NN);
	KNN = knn;

	Neighbours = cell(1,length(KNN));


	for j=1:length(KNN)
             Neighbours{j}=dTrain{KNN(j)};
        end
	ssave(fullfile(NNPATH,[ dTest{i} '.mat']),'Neighbours','KNN', 'queryIm');
end

%--------------------------------------------------------------------------------------------------------
%   transfer labels from nearest neighbours
%--------------------------------------------------------------------------------------------------------

transferBboxNoSiftFlow(1:length(dTest));

%--------------------------------------------------------------------------------------------------------
%   evaluate performance of label transfer
%--------------------------------------------------------------------------------------------------------

EvaluateABONoSF;

exit;
