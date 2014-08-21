function [j, dist] = LMdecafquery(decafQuery, decaf)

%if exist('IsCorrelation','var')~=1
%    IsCorrelation = 0;
%end
fprintf('in LM decaf query');
%if IsCorrelation
    % normalize correlation
 %   gistQuery = normalizeGist(gistQuery);
  %  gist = normalizeGist(gist);
  %  dist = 2-2*gist*gistQuery';
  %  [dist,j] = sort(dist);
%else
    % L2
    dist = sum((decaf - repmat(decafQuery, [size(decaf,1) 1])).^2,2);
    [dist,j] = sort(dist);
    
%end

fprintf('nearest neighbour is %d',j(1));
