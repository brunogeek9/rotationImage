%#Função que cria novas imagens
function geraImagens(im,nIm,ang,qtdRot)
  
  for k=1:qtdRot;
    rot = imrotate(im, ang, 'nearest','crop');
    #rot3 = rot;
    ang = ang + 10;
    rot2 = RemoverFundo(rot);
    #chamar função aqui
    #rot3 = colocaFundoPreto(rot,rot2);     
    #
    rot3 = zeros(size(rot2,1),size(rot2,2),3);
    for i=1:size(rot2,1)
      for j=1:size(rot2,2)
        if rot2(i,j) > 0
          rot3(i,j,:) = rot(i,j,:);
        else
          rot3(i,j,:)=0;
        endif
                 
      endfor
    endfor
    #
    fileName = strcat('im ',int2str(nIm),'-',int2str(k),'.jpg');  
    imwrite(rot3, strcat('C:\Users\jamelli\Desktop\rotationImage-master\novas\',fileName)); 
  end
end