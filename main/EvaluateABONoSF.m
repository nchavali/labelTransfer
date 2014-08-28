function EvaluatingIOUNoSF()

config=createNonFlannConfig;
%numOfNearestNeigh=[5,10,15,20,30,40,50,60,70,80,90,100,500,1000,2000];
numOfNearestNeigh=[1];
fileDir=config.path.nearestNeighbourLoc;
annoDir=config.path.annotationLoc;
outputDir=config.path.resultsLoc;
databaseLoc=config.path.databaseLoc;
gtLoc=config.path.gtData;
load([databaseLoc 'database.mat']);


for numNN=numOfNearestNeigh
	eval(sprintf('transferedLabels%dNN=cell(9240,1);',numNN));
end



for i=1:length(dTest)
    fileName=[fileDir dTest{i}  '.mat'];
    load(fileName);
    for numNN=numOfNearestNeigh
    	eval(sprintf('transferedLabels%dNN{i}=transfered_query_bboxes_%dNN;',numNN,numNN));
    end
end

%load ground truth 

gtFile=config.list.gtImageData;
load([gtLoc gtFile]);

for numNN=numOfNearestNeigh
	fprintf('Evaluating ABO for %d NN:\n',numNN);
	fileName=sprintf('TransferedBoxResultsNoSIFTFlow%dNN',numNN);   
	eval(sprintf('[abo mabo boScores,averageBoxes]=BoxAverageBestOverlap(gtBoxes,gtImageNames,transferedLabels%dNN);',numNN));
	fprintf('****** ABO IS %d ******\n',abo);
	fileName=sprintf('TransferedBoxResultsNoSIFTFlow%dNN',numNN);
	variableName=sprintf('transferedLabels%dNN',numNN)
	save(fileName,'mabo','abo','averageBoxes',variableName);

end

