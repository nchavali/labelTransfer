%construct a databse using val1 as the imageset

load configFile.mat;
save([config.path.intermediateLoc 'sampleConfig.mat'], 'config' );
params=generateParams('autotuned',1,0.01,.75,1);
feature=config.featureName;
dataset=config.datasetName;
%build database
%buildDatasetForFlann(config);
%load train dataset

trainDataSetFile=[config.path.intermediateLoc feature '_' dataset '_train_database.mat']
testDataSetFile=[config.path.intermediateLoc feature '_' dataset '_test_database.mat']
try
	load(trainDataSetFile);
	trainSet=database;
	clear database;
	load(testDataSetFile)
	testSet=database;
	clear database;
        fprintf('done loading databses\n');
catch
	buildDatasetForFlann(config);
	load([trainDataSetLoc feature '_' dataset '_train_database.mat' ]);
	trainSet=database;
        clear database;
        load(testDataSetFile);
        testSet=database;
	clear database;
	fprintf('done loading databses after building\n');
end

indexSaveLoc=config.path.intermediateLoc;
indexSaveFile=[indexSaveLoc feature '_' dataset '_' 'SingleIndex.mat'];

try
	fprintf('loading index...\n')
	load(indexSaveFile); 
        index
        fprintf('loaded..index');
catch 

	fprintf('building index...\n');
	[index,parameters,speedup]=flann_build_index(trainSet,params);
	save(indexSaveFile,'index','parameters','speedup');
	fprintf('done saving index');
end

%build test matrix and search for nearest neighbours of test set
fprintf('finding the nearest neighbours of the test set..\n');
[results5,dists5]=flann_search(index,testSet,5,parameters)

resultSaveLoc=config.path.outputLoc;
resultSaveFile=[resultSaveLoc feature '_' dataset '_' 'Result.mat'];
save(resultSaveFile,'results5','dists5','-append');


