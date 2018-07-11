%#Função que cria novas imagens
function geraImagens(im,ang,qtdRot)
  fundo = uint8(zeros(size(im,1),size(im,2),3));
  fundo(:,:,1) = im(1,1,1);
  fundo(:,:,2) = im(1,1,2);
  fundo(:,:,3) = im(1,1,3);
  
  for k=1:qtdRot;
    rot = imrotate(im, ang, 'nearest','crop');
    rot3 = rot;
    ang = ang + 10;
    rot2 = RemoverFundo(rot);
    
         for i=1:size(rot2,1)
             for j=1:size(rot2,2)
                 if rot2(i,j) > 0
                    rot3(i,j,:) = rot(i,j,:);
                 else
                     rot3(i,j,:)=0;
                 end
                 
             end
         end
    fileName = strcat(int2str(k),'.jpg');  
    imwrite(rot3, strcat('C:\Users\IASLAN\Documents\MATLAB\rotationImage-master\novas\',fileName)); 
  end
end