#Função que cria novas imagens
function geraImagens(im,ang,qtdRot)
  fundo = zeros(size(im,1),size(im,2),3);
  fundo = im(1,1,:);
  #sf = separaAzul(im);
  for k=1:qtdRot;
    rot = imrotate(im, ang, 'nearest','crop', 0);
    ang = ang + 10;
    fileName = strcat('output (',num2str(k),').jpg');  
    #output = max(fundo,rot);
    imwrite(rot, strcat('C:\Users\jamelli\Desktop\outputs\',fileName)); 
  endfor
endfunction