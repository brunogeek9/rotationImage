close all
clear all
pkg load image
im = imread('E:\Documentos\TADS\Algoritmo Rotações\Imagens\Sementes germinadas\Lote 10 (01 - 100)\1.jpg');
ang = 10;
qtdRot = 36;
sf = separaAzul(im);
figure(1), imshow(sf);
#fundo = zeros(size(im,1),size(im,2),3);
#fundo = im(1,1,:);
#for k=1:qtdRot;
#  rot = imrotate(im, ang, 'nearest','crop', 0);
#  ang = ang + 10;
#  fileName = strcat('output (',num2str(k),').jpg');  
  #imwrite(rot,nomeImagem);
  #filename = strcat('saida (',num2str(k),').jpg');;
  #rot 
#  output = max(fundo,rot);
#  imwrite(output, strcat('C:\Users\Aluno\Downloads\Imagens\saidas\',fileName)); 
#endfor
gerarImagens(im,ang,qtdRot);
#figure(1),imshow(fundo)
#figure(2),imshow(rot)