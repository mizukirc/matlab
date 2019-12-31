close all
%% �W���b�L��g
[xc,yc,zc] = cylinder(30,30);
h_s1 = surf(xc,yc,zc*100);
h_s1.FaceAlpha = 0.5;
hold on

%% �r�[��
[xc,yc,zc] = cylinder(26,26);
h_s2 = surf(xc,yc,zc*75+5);
h_s2.FaceAlpha = 0.8;

%% �r�[���A
[xc,yc,zc] = cylinder(26,26);
h_s3 = surf(xc,yc,zc*20 + 80);
h_s3.FaceAlpha = 1;

%% �����
a = 10; 
c = 20;
[u,v] = meshgrid(0:10:360);

x = 30 + (c+a*cosd(v)).*sind(u)/2;
y = 40 + (c+a*cosd(v)).*cosd(u);
z = 80 + a*sind(v);
h_s4 = surfl(x(:, 1:round(end/2)), y(:, 1:round(end/2)), z(:, 1:round(end/2)));
rotate(h_s4, [1 0 0], 90)
h_s4.FaceAlpha = 0.5;

%% �A�̂ӂ�����
h_s5 = annotation('ellipse', [0.365 0.714 0.24 0.16],...
    'LineStyle','none');

%% �F����
shading interp
h_s1.FaceColor = [0.4 0.4 0.4];
h_s2.FaceColor = [1 0.7 0];
h_s3.FaceColor = [1 1 1];
h_s4.FaceColor = [0.4 0.4 0.4];
h_s5.FaceColor = [1 1 1];

axis equal
%axis off
hold off
view(30,30)
