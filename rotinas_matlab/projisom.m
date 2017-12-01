function newp=projisom(p);
% Projecao Isometrica 
% newp=projisom(p)
% A entrada e' um conjunto de pontos em coordenadas homogeneas 
% sob a forma de uma matriz p(nx4) onde n corresponde ao numero 
% de pontos 

newp=trans3d(p,[-1 -1 -1]);
newp=rot3d(newp,-45,'z');
newp=rot3d(newp,-54.7356,'y');
newp=rot3d(newp,90,'z');
