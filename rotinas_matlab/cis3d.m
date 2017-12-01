function newp=cis3d(p,sh)
% Cisalhamento de x e y com relacao a z em 3D
% newp=cis3d(p,sh)
% As entradas sao um conjunto de pontos sob em coordenadas homogeneas
% sob a forma de uma matriz p(nx4) onde n corresponde ao numero 
% de pontos e um vetor de cisalhamento [shx, shy]

cis=eye(4);
cis(1,3)=sh(1);
cis(2,3)=sh(2);


for i = 1:size(p,1)
   newp(i,:) = (cis*[p(i,:)]')';
end