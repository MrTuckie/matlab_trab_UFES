function newp=projort(p)
% Projecao Ortografica
% newp=projort(p)
% As entradas sao um conjunto de pontos em coordenadas homogeneas
% sob a forma de uma matriz p(nx4) onde n corresponde ao numero de 
% pontos 

ort=eye(4);
ort2(1:2,:)=ort(1:2,:);
ort2(3,:)=ort(4,:);


for i = 1:size(p,1)
   newp(i,:) = (ort2*[p(i,:)]')';
end
