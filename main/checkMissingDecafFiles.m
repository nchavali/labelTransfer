
featureLoc='/home/gneelima/work/code/labelTransfer/datasets/datasetImageNetVal1/DecafCenter/';
imageListLoc='/home/gneelima/work/data/output/objectProposals/labelTransfer/'

files=dir([imageListLoc '*.mat']);
count=0;
missingFiles=cell(0,0);

for i=1:length(files)
	fileName=[imageListLoc files(i).name];
	load(fileName);
	for j=1:length(filteredImageIds)
		featureFile=[featureLoc filteredImageIds{j} '.JPEG.mat'];

		try
		load(featureFile);
		catch
                count=count+1;
		missingFiles{count}=filteredImageIds{j};
		end
	end
end
save('missingFiles.mat','missingFiles');





