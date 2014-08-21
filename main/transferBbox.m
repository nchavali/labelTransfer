function  transferBbox(config)
%addpath(genpath('/home/gneelima/work/labelTransfer/matlab/'));

%numOfNearestNeigh=[5,10,15,20,30,40,50,60,70,80,90,100,500,1000,1500,2000,3000,4000,5000,5011];
numOfNearestNeigh=[1000];

annotationLoc=config.path.annotationLocation;


load([config.path.outputLoc 'trainIgnoreList.mat']);
trainImageIds=filteredImageIds;
size(trainImageIds)
load([config.path.outputLoc 'testIgnoreList.mat']);
testImageIds=filteredImageIds;
size(testImageIds)
saveLocTransferedLabels='/home/gneelima/work/data/output/objectProposals/labelTransfer/transferedLabels/';
%load results
load('/home/gneelima/work/data/output/objectProposals/labelTransfer/decaf_ImNet_Result.mat');



numNN=1000;
for i =1:size(results,2)


	image_name=[testImageIds{i} '.JPEG'];
        im_loc=config.path.imageLoc;
	image=imread(fullfile(im_loc,image_name));
	%(y is rows), x is columns
	im_height=size(image,1);
	im_width=size(image,2);

	sprintf('transfered_query_bboxes_%dNN=[]',numNN)
	eval(sprintf('transfered_query_bboxes_%dNN=[];',numNN));

		for j =1:size(results,1)
                neighbourName=trainImageIds{results(j,i)};
 		neighbourFile=[annotationLoc neighbourName '.xml'];
		rec=PASreadrecord(neighbourFile);
		num_objects=length(rec.objects);

		neigh_height=rec.size.height;
		neigh_width=rec.size.width;

		scale_width=double(im_width/neigh_width);
		scale_height=double(im_height/neigh_height);

		query_box=zeros(num_objects,4);

			for k=1:num_objects
			query_box(k,1)= scale_width*rec.objects(k).bbox(1);
			query_box(k,2)= scale_height*rec.objects(k).bbox(2);
			query_box(k,3)= scale_width*rec.objects(k).bbox(3);
			query_box(k,4)= scale_height*rec.objects(k).bbox(4);
			end
		sprintf('transfered_query_bboxes_%dNN=[transfered_query_bboxes_%dNN;query_box]',numNN,numNN)
		eval(sprintf('transfered_query_bboxes_%dNN=[transfered_query_bboxes_%dNN;query_box];',numNN,numNN));
		end
        saveFileName=[testImageIds{i} '.mat'];
	variableName=sprintf('transfered_query_bboxes_%dNN',numNN);
	save([saveLocTransferedLabels saveFileName],variableName);
end



