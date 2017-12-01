function newp=rotantbr(corpo, br, antbr,cot,ang)
% Rotaciona o antebraco do robo
% corpo = corpo do robo
% br = braco do robo
% antbr = antebraco do robo
% cot = cotovelo
% ang = angulo de rotacao


trans1=eye(3);
trans1(1,3)= -cot(1);
trans1(2,3)= -cot(2);


ang=ang*pi/180;
rot=[cos(ang), -sin(ang), 0; sin(ang), cos(ang), 0; 0 0 1];

trans2=eye(3);
trans2(1,3)= cot(1);
trans2(2,3)= cot(2);


m=trans2*rot*trans1;

for i = 1:size(antbr,1)
   newp(i,:) = (m*[antbr(i,:)]')';
end

figure;
mostrar2d(corpo);
hold;
mostrar2d(br);
mostrar2d(newp);

