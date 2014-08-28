function  transferBboxNoSiftFlow(range)
config=createNonFlannConfig;
%numOfNearestNeigh=[5,10,15,20,30,40,50,60,70,80,90,100,500];

numOfNearestNeigh=[1];
NNLoc=config.path.nearestNeighbourLoc;
imLoc=config.path.imLoc;
annoLoc=config.path.annotationLoc;
databaseLoc=config.path.databaseLoc;

load([databaseLoc 'database.mat']);

for numNN=numOfNearestNeigh
	for i =range

	file_name=dTest{i};
	load(fullfile(NNLoc,file_name));

        queryRec=PASreadrecord(fullfile(annoLoc,[dTest{i} '.xml']));
	%(y is rows), x is columns
	im_height=queryRec.size.height;
	im_width=queryRec.size.width;

	eval(sprintf('transfered_query_bboxes_%dNN=[];',numNN));

		for j =1:numNN
		rec=PASreadrecord(fullfile(annoLoc,[Neighbours{j} '.xml']));
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
		eval(sprintf('transfered_query_bboxes_%dNN=[transfered_query_bboxes_%dNN;query_box];',numNN,numNN));
		end
        fprintf('done with image: %s for nn: %d\n',dTest{i},numNN);
	variableName=sprintf('transfered_query_bboxes_%dNN',numNN);
	save(fullfile(NNLoc,file_name),variableName,'-append');
	end

end

