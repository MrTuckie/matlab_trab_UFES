function mostrar3d(p)
% mostrar3d(p): mostra poligonal descrita pela matriz p (nx3)
%               onde n e o numero de pontos. as colunas 1, 2 e 3
%               contem as coordenadas x, y e z respectivamente.
%               
%
plot3(p(:,1),p(:,2),p(:,3));

aux=p.*sign(p);
v=max(max(aux));

if v >= 5
	v=ceil(v/5);
	v=v*5;
	axis('equal');
	axis([-v v -v v -v v]);
else
	axis('equal');
	axis([-5 5 -5 5 -5 5]);
end
grid on
xlabel('x');
ylabel('y');
zlabel('z');

