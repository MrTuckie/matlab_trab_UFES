function mostrar2d(p)
% mostrar2d(p): mostra poligonal descrita pela matriz p (nx2)
%               onde n e o numero de pontos. as colunas 1 e 2
%               contem as abcissas e ordenadas, respectivamente.
%               
%
plot(p(:,1),p(:,2));

aux=p.*sign(p);
v=max(max(aux));

if v >= 5
	v=ceil(v/5);
	v=v*5;
	axis('equal');
	axis([-v v -v v]);
else
	axis('equal');
	axis([-5 5 -5 5]);
end
grid on