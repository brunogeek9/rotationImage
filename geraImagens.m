pkg load image
function geraImagens(im,ang,qtdRot)
  fundo = zeros(size(im,1),size(im,2),3);
  fundo = im(1,1,:);
  for k=1:qtdRot;
    rot = imrotate(im, ang, 'nearest','crop', 0);
    ang = ang + 10;
    fileName = strcat('output (',num2str(k),').jpg');  
    imwrite(rot,nomeImagem);
    filename = strcat('saida (',num2str(k),').jpg');;
    #rot 
  #  output = max(fundo,rot);
    imwrite(rot, strcat('C:\Users\Aluno\Downloads\Imagens\saidas\',fileName)); 
  endfor
endfunction