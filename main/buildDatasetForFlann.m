%This script builds the dataset for flann
%database needs to get saved in intermediate location
function [testDatabase,trainDatabase]=buildDatasetForFlann(config)
%database will be a dxn matrx where d is the feature dimension, n is the number of images

featureName=config.featureName;
dataset=config.datasetName;
saveLoc=config.path.intermediateLoc;
sets=cell(0);
sets{1}='train';
sets{2}='test';

switch featureName
	case 'decaf'
              rows=4096;
end

for i=1:2
	if(dataset=='ImNet')
		%preprocessInputData(config);
		loadFile=[config.path.outputLoc sets{i} 'IgnoreList.mat']
		load(loadFile);
		imageIds=filteredImageIds;
		%imageIds= textread(config.path.databaseTrainImageList, '%s%*[^\n]');
	else
		imageIds= textread(config.path.databaseTrainImageList);
	end

	%create a matrix to hol the features
	database=zeros(4096,length(imageIds));

	for i=1:length(imageIds)
		featureLoc=[config.path.featureLoc imageIds{i} '.JPEG.mat'];
		load(featureLoc);
		database(:,i)=data;
	end

	%database is ready, save it
        %convert database to single: double does not seem to be working
        database=single(database);  
	saveLoc=config.path.intermediateLoc;
	if(~isempty(strfind(loadFile,'train')))
		saveFile=[saveLoc featureName '_' dataset '_train_database.mat'];
	else
		saveFile=[saveLoc featureName '_' dataset '_test_database.mat'];
	end
	save(saveFile,'database');

end
%now create test database
%{
if(dataset=='ImNet')
%imageIds= textread(config.path.databaseTestImageList, '%s%*[^\n]');

else
imageIds= textread(config.path.databaseTestImageList);
end

testDatabase=zeros(4096,length(imageIds));

for i=1:length(imageIds)

featureLoc=[config.path.featureLoc imageIds{i} '.JPEG.mat'];

load(featureLoc);
testDatabase(:,i)=data;
end

%database is ready, save it
saveLoc=config.path.intermediateLoc;
saveFile=[saveLoc featureName '_val2_database.mat'];
save(saveFile,'testDatabase');

%}

