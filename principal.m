close all
clear all
pkg load image
im = imread('E:\Documentos\TADS\Algoritmo Rotações\Imagens\Sementes germinadas\Lote 10 (01 - 100)\1.jpg');
ang = 10;
qtdRot = 36;
sf = separaAzul(im);
figure(1), imshow(sf);

geraImagens(im,10,36);