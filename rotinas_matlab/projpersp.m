function newp=projpersp(p,f)
% Projecao Perspectiva
% newp=projpersp(p)
% As entradas sao um conjunto de pontos em coordenadas homogeneas
% sob a forma de uma matriz p(nx4) onde n corresponde ao numero de 
% pontos e o valor f da distancia focal

pers=eye(4);
pers2(1:3,:)=pers(1:3,:);
pers2(3,3)=1/f;
pers2(3,4)=1;
pers2
for i = 1:size(p,1)
   newp(i,:) = (pers2*[p(i,:)]')';
   newp(i,:) = newp(i,:)/newp(i,3);
end
