% to plot the harmonic chain
% 2017.march.20 
clear all; close all; clc; 

N = 5; 

x1 = 0:(N-1);
y1 = zeros(1, N);

r = 0.08;
theta = pi/6;
omega = 80;
tlist = 0:0.001:1;
x2 = tlist  - sin(theta) * r *sin(omega*tlist);
y2 = r*cos(omega*tlist);

h1 = figure;
hold on 
scatter(x1, y1, 200, 'filled')
plot(x2, y2 , 'b')
plot( x2+1, y2, 'b')
plot( x2+2, y2,  'b')
plot( x2 +3, y2, 'b')

text(0.5, 0.5, '$ k $','fontsize',20,'Interpreter','latex')
text(1.5, 0.5, '$ k $','fontsize',20,'Interpreter','latex')
text(2.5, 0.5, '$ k $','fontsize',20,'Interpreter','latex')
text(3.5, 0.5, '$ k $','fontsize',20,'Interpreter','latex')
text(0, -0.5, '$ m $','HorizontalAlignment','center','fontsize',20,'Interpreter','latex')
text(1, -0.5, '$ m $','HorizontalAlignment','center','fontsize',20,'Interpreter','latex')
text(2, -0.5, '$ m $','HorizontalAlignment','center','fontsize',20,'Interpreter','latex')
text(3, -0.5, '$ m $','HorizontalAlignment','center','fontsize',20,'Interpreter','latex')
text(4, -0.5, '$ m $','HorizontalAlignment','center','fontsize',20,'Interpreter','latex')

ylim([-3 3])
box off 
axis off 

print(h1,'-depsc','chain.eps')
