function im = RemoverFundo(im) 
  im2 =im;
  %figure(2),imshow(im2)
  R = im(:,:,1);
  B = im(:,:,3);
  
  im = (R-B)>1;
  
%   for i=1:size(im,1)
%     for j=1:size(im,2)
%         if im(i,j) > 0
%             im3(i,j,:) = im2(i,j,:);
%         else
%             im3(i,j,:)=0;
%         end
%     end
% end