%#Função que cria novas imagens
function geraImagens(im,nIm,ang,qtdRot)
  
  for k=1:qtdRot;
    rot = imrotate(im, ang, 'nearest','crop');
    ang = ang + 10;
    rot2 = RemoverFundo(rot);
    
    rot3 = colocaFundoPreto(rot,rot2);
    
    fileName = strcat('im ',int2str(nIm),'-',int2str(k),'.jpg');  
    imwrite(rot3, strcat('C:\Users\jamelli\Desktop\rotationImage-master\novas\',fileName)); 
  end
end