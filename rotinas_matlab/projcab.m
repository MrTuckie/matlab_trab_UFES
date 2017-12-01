function newp=projcab(p,beta)
% Projecao Obliqua Cabinet
% newp=projcab(p,beta)
% As entradas sao um conjunto de pontos em coordenadas homogeneas
% sob a forma de uma matriz
% p(nx4) onde n corresponde ao numero de pontos 


beta=beta*pi/180;
cab=eye(4);
cab2(1:2,:)=cab(1:2,:);
cab2(3,:)=cab(4,:);
cab2(1,3)=(0.5)*cos(beta);
cab2(2,3)=(0.5)*sin(beta);

for i = 1:size(p,1)
   newp(i,:) = (cab2*[p(i,:)]')';
end
