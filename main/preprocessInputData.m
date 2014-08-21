function preprocessInputData(config)
% remove images without bounding boxes
%for now only imagenet data does not have bounding boxes for some images

%initialize variables
trainList=config.lists.databaseTrainImageList;
testList=config.lists.databaseTestImageList;

annotationLoc=config.path.annotationLocation;

lists=cell(2,1);
lists{1}=trainList;
lists{2}=testList;

if(isequal(config.datasetName,'ImNet'))

	for i=1:length(lists)
		imageIds=textread(lists{i},'%s%*[^\n]');
		imageIndicesToIgore=[];
                imageNames=cell(0,0);
		count=0;
		for j=1:length(imageIds)
			annotationFile=[annotationLoc imageIds{j} '.xml'];
			rec=PASreadrecord(annotationFile);
			if(~isfield(rec,'objects'))
                        	count=count+1;
                		imagesIndicesToIgore(count)=j;
                                imageNames{count}=imageIds{j};
			end
		end
		if(isempty(strfind(lists{i},'val2')))
			saveFile=[config.path.outputLoc 'trainIgnoreList.mat'];
			save(saveFile,'imagesIndicesToIgore','imageNames');
		else
			saveFile=[config.path.outputLoc 'testIgnoreList.mat'];
			save(saveFile,'imagesIndicesToIgore','imageNames');
		end
                clear imagesIndicesToIgore,imageNames,count;

	end

 %now create a new list with

	for i=1:length(lists)
		imageIds=textread(lists{i},'%s%*[^\n]');  
                fprintf('loading %s',lists{i});
                if(isempty(strfind(lists{i},'val2')))
                        fprintf('load file is :trainIgnoreList.mat');
                        loadFile=[config.path.outputLoc 'trainIgnoreList.mat'];
                        load(loadFile);
                else
                        loadFile=[config.path.outputLoc 'testIgnoreList.mat'];
                        load(loadFile);
                end
		for j=1:length(imagesIndicesToIgore)
                index=length(imagesIndicesToIgore)+1-j;
                imageIds(imagesIndicesToIgore(index))=[];
                end
                filteredImageIds=imageIds;
                save(loadFile,'filteredImageIds','-append');
                clear imageIds,filteredImageIds,loadFile,imagesIndicesToIgore;
	end

end		




