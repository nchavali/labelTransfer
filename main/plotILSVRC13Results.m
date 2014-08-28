%load ABO data for selective search, bing and our approach

config=createNonFlannConfig();
fileLoc=config.paths.output;

bingAboFile=[fileLoc 'aboBing.mat'];
labeltransferFile=[fileLoc 'aboLabelTransferNoSF.mat'];
selectiveSearchFile=[fileLoc 'aboSelectiveSearch.mat'];

load(bingAboFile);
bingY=aboBing;

load(labeltransferFile);
labelTransferY=aboLabelTransfer;

load(selectiveSearchFile);
selSearchY= aboSelectiveSearch;

X=[1,10,100,1000,2000,3000,4000,5000];


