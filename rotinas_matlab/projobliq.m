function newp=projobliq(p,alfa,beta)
% Projecao Obliqua 
% newp=projobliq(p,alfa,beta)
% As entradas sao um conjunto de pontos em coordenadas homogeneas 
% sob a forma de uma matriz p(nx4) onde n corresponde ao numero 
% de pontos e os angulos alfa (angulo de incidencia das projetantes)
% e beta (angulo de rotacao da normal projetada com relacao ao eixo X)


beta=beta*pi/180;
alfa=alfa*pi/180;
l=cot(alfa);
obliq=eye(4);
obliq2(1:2,:)=obliq(1:2,:);
obliq2(3,:)=obliq(4,:);
obliq2(1,3)=l*cos(beta);
obliq2(2,3)=l*sin(beta);

for i = 1:size(p,1)
   newp(i,:) = (obliq2*[p(i,:)]')';
end
