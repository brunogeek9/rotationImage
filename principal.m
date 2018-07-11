close all
clear all
pkg load image
qtdImagens = 5;
for x=1:qtdImagens
  imageName = strcat(num2str(x),'.jpg');
  im = imread(strcat('C:\Users\jamelli\Desktop\Imagens\Imagens\Sementes germinadas\',imageName));
  geraImagens(im,x,10,36);
endfor
         

Texto = 'Fim Algoritmo'