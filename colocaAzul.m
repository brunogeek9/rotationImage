function saida = colocaAzul(rot,fundo)
  saida = zeros(size(rot,1),size(rot,2),3);
  for i=1:size(rot,1)
    for j=1:size(rot,2)
      #if rot(i,j,1) < 10
      #  saida(i,j,:) = fundo(i,j,:);
      #else
        saida(i,j,1) = rot(i,j,1);
        saida(i,j,2) = rot(i,j,2);
        saida(i,j,3) = rot(i,j,3);
      #endif
    endfor
  endfor
endfunction