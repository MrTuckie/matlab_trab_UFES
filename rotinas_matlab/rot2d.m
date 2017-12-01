function newp=rot2d(p,ang)
% Rotacao em 2D
% newp=rot2d(p,ang)
% As entradas sao um conjunto de pontos em coordenadas homogeneas
% sob a forma de uma matriz p(nx3) onde n corresponde ao numero 
% de pontos e o valor de um angulo dado em graus

ang=ang*pi/180;

rot=[cos(ang), -sin(ang), 0; sin(ang), cos(ang), 0; 0 0 1];

for i = 1:size(p,1)
   newp(i,:) = (rot*[p(i,:)]')';
end