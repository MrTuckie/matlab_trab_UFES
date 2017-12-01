function newp=esc3d(p,s)
% Mudanca de escala em 3D
% newp=esc3d(p,s)
% As entradas sao um conjunto de pontos em coordenadas homogeneas
% sob a forma de uma matriz p(nx4) onde n corresponde ao numero 
% de pontos e um vetor de fatores de escala [sx, sy, sz]

esc=eye(4);
esc(1,1)=s(1);
esc(2,2)=s(2);
esc(3,3)=s(3);


for i = 1:size(p,1)
   newp(i,:) = (esc*[p(i,:)]')';
end