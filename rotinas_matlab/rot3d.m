function newp=rot3d(p,ang,eixo)
% Rotacao em 3D
% newp=rot3d(p,ang,eixo)
% As entradas sao um conjunto de pontos em coordenadas homogeneas
% sob a forma de uma matriz p(nx4) onde n corresponde ao numero 
% de pontos, o valor ang de um angulo dado em graus para a rotacao 
% e o eixo de rotacao

ang=ang*pi/180;

rot = eye(4);

if size(eixo)==[1 1]
	% eixo e' uma letra indicando o eixo
	switch lower(eixo)
		case 'x',
			rot(2,2)= cos(ang);
			rot(2,3)=-sin(ang);
			rot(3,2)= sin(ang);
			rot(3,3)= cos(ang);
		case 'y',
			rot(1,1)= cos(ang);
			rot(1,3)= sin(ang);
			rot(3,1)= -sin(ang);
			rot(3,3)= cos(ang);
		case 'z',
			rot(1,1)= cos(ang);
			rot(1,2)=-sin(ang);
			rot(2,1)= sin(ang);
			rot(2,2)= cos(ang);
		otherwise, 
		      disp('eixo invalido');
      		return;
	   end;
else
a2 = eixo.*eixo;
   sa = sin(ang);
   ca = cos(ang);
   rot(1,1) = a2(1)+(1-a2(1))*ca;
   rot(1,2) = eixo(1)*eixo(2)*(1-ca)-eixo(3)*sa;
   rot(1,3) = eixo(1)*eixo(3)*(1-ca)+eixo(2)*sa;
   rot(2,1) = eixo(1)*eixo(2)*(1-ca)+eixo(3)*sa;
   rot(2,2) = a2(2)+(1-a2(2))*ca;
   rot(2,3) = eixo(2)*eixo(3)*(1-ca)-eixo(1)*sa;
   rot(3,1) = eixo(1)*eixo(3)*(1-ca)-eixo(2)*sa;
   rot(3,2) = eixo(2)*eixo(3)*(1-ca)+eixo(1)*sa;
   rot(3,3) = a2(3)+(1-a2(3))*ca;

end

for i = 1:size(p,1)
   newp(i,:) = (rot*[p(i,:)]')';
end