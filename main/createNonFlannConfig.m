function config=createNonFlannConfig()

config.path.featureLoc='/home/gneelima/work/code/labelTransfer/datasets/datasetImageNetVal1/DecafCenter/';
config.path.imListsLoc='/home/gneelima/work/data/output/objectProposals/labelTransfer/';
config.path.databaseLoc='/home/gneelima/work/data/input/objectProposals/labelTransfer/nonflann/';
config.path.nearestNeighbourLoc='/home/gneelima/work/data/intermediate/objectProposals/labelTransfer/nonflann/';
config.path.annotationLoc='/home/gneelima/work/data/datasets/ILSVRC13/val/annotations/';
config.path.gtData='/home/gneelima/work/code/aboEvaluation/data/';
config.path.imLoc='/home/gneelima/work/data/datasets/ILSVRC13/val/images/';
config.path.resultsLoc='/home/gneelima/work/data/input/objectProposals/labelTransfer/nonflann/';
config.list.testList='testIgnoreList.mat';
config.list.trainList='trainIgnoreList.mat';
config.list.gtImageData='gtImageNet13Val2.mat';
