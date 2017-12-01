function newp=trans2d(p,t)
% Translacao em 2D
% newp=trans2d(p,t)
% As entradas sao um conjunto de pontos em coordenadas homogeneas
% sob a forma de uma matriz p(nx3) onde n corresponde ao numero 
% de pontos e um vetor de translacao [dx, dy]

trans=eye(3);
trans(1:2,3)=t(:);


for i = 1:size(p,1)
   newp(i,:) = (trans*[p(i,:)]')';
end