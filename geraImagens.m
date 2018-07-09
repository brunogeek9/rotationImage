#Função que cria novas imagens
function geraImagens(im,ang,qtdRot)
  fundo = uint8(zeros(size(im,1),size(im,2),3));
  fundo(:,:,1) = im(1,1,1);
  fundo(:,:,2) = im(1,1,2);
  fundo(:,:,3) = im(1,1,3);
  figure(1),imshow(fundo);
  for k=1:qtdRot;
    rot = imrotate(im, ang, 'nearest','crop', 200);
    ang = ang + 10;
    fileName = strcat('output (',num2str(k),').jpg');  
    
    #output = zeros(size(im,1), size(im,2),3);
    #output = colocaAzul(rot,fundo);
    imwrite(rot, strcat('C:\Users\jamelli\Desktop\outputs\',fileName)); 
  endfor
endfunction