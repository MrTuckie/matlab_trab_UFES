function newp=projcav(p,beta)
% Projecao Obliqua Cavaleira
% newp=projcav(p,beta)
% As entradas sao um conjunto de pontos em coordenadas homogeneas
% sob a forma de uma matriz
% p(nx4) onde n corresponde ao numero de pontos 


beta=beta*pi/180;

cav=eye(4);
cav2(1:2,:)=cav(1:2,:);
cav2(3,:)=cav(4,:);
cav2(1,3)=cos(beta);
cav2(2,3)=sin(beta);

for i = 1:size(p,1)
   newp(i,:) = (cav2*[p(i,:)]')';
end
