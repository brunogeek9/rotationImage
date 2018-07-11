close all
clear all
pkg load image
qtdImagens = 4;
for x=4:qtdImagens
  imageName = strcat(num2str(x),'.jpg');
  #im = imread('C:\Users\jamelli\Desktop\Imagens\Imagens\Sementes germinadas\1.jpg');
  im = imread(strcat('C:\Users\jamelli\Desktop\Imagens\Imagens\Sementes germinadas\',imageName));
  geraImagens(im,x,10,36);
endfor
         

Texto = 'Fim Algoritmo'