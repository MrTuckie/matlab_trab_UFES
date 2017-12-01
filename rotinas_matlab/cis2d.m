function newp=cis2d(p,sh)
% Cisalhamento em 2D
% newp=cis2d(p,sh)
% As entradas sao um conjunto de pontos em coordenadas homogeneas
% sob a forma de uma matriz p(nx3) onde n corresponde ao numero 
% de pontos  e um vetor de cisalhamento [shx, shy]

cis=eye(3);
cis(1,2)=sh(1);
cis(2,1)=sh(2);


for i = 1:size(p,1)
   newp(i,:) = (cis*[p(i,:)]')';
end