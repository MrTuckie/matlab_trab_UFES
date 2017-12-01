function newp=esc2d(p,s)
% Mudanca de escala em 2D
% newp=esc2d(p,s)
% As entradas sao um conjunto de pontos em coordenadas homogeneas
% sob a forma de uma matriz p(nx3) onde n corresponde ao numero 
% de pontos e um vetor de fatores de escala [sx, sy]

esc=eye(3);
esc(1,1)=s(1);
esc(2,2)=s(2);


for i = 1:size(p,1)
   newp(i,:) = (esc*[p(i,:)]')';
end