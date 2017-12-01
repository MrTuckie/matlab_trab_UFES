function newp=trans3d(p,t)
% Translacao em 3D
% newp=trans3d(p,t)
% As entradas sao um conjunto de pontos em coordenadas homogeneas
% sob a forma de uma matriz p(nx4) onde n corresponde ao numero 
% de pontos e um vetor de translacao [dx, dy, dz]

trans=eye(4);
trans(1:3,4)=t(:);


for i = 1:size(p,1)
   newp(i,:) = (trans*[p(i,:)]')';
end