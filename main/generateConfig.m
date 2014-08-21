function config=generateConfig(imagePath,featureLoc,intermediateLoc,outputLoc,databaseTrainImageList,databaseTestImageList,annotationLocation,datasetName,featureName)
%inputs are self explanatory


%for now datasetName can be ImNet or PAS

config.path.imageLoc=imagePath;
config.path.featureLoc=featureLoc;
config.path.intermediateLoc=intermediateLoc;
config.path.outputLoc=outputLoc;

config.lists.databaseTrainImageList=databaseTrainImageList;
config.lists.databaseTestImageList=databaseTestImageList;

config.path.annotationLocation=annotationLocation

config.datasetName=datasetName;
config.featureName=featureName;
