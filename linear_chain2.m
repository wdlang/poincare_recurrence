% to plot the harmonic chain
% 2017.march.20 
clear all; close all; clc; 

N = 5; 

x1 = 1:(N-2);
y1 = zeros(1, N-2);

r = 0.08;
theta = pi/6;
omega = 80;
tlist = 0.02:0.001:1-0.02;
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
% text(0, -0.5, '$ m $','HorizontalAlignment','center','fontsize',20,'Interpreter','latex')
text(1, -0.5, '$ m $','HorizontalAlignment','center','fontsize',20,'Interpreter','latex')
text(2, -0.5, '$ m $','HorizontalAlignment','center','fontsize',20,'Interpreter','latex')
text(3, -0.5, '$ m $','HorizontalAlignment','center','fontsize',20,'Interpreter','latex')
% text(4, -0.5, '$ m $','HorizontalAlignment','center','fontsize',20,'Interpreter','latex')

y3 = -0.5:0.0001:0.5;
x3 = zeros(1, length(y3));
plot(x3, y3, 'linewidth',2)

y3 = -0.5:0.0001:0.5;
x3 = zeros(1, length(y3)) + 4;
plot(x3, y3, 'linewidth',2)

x3 = -(0:0.001:0.1);
for s = 2: 11
    y3 = x3  + (s- 6)* 0.1;
    plot(x3, y3, 'linewidth', 2)
end

x3 = 4 + (0:0.001:0.1);
for s = 1: 10
    y3 = x3 - 4 + (s- 6)* 0.1;
    plot(x3, y3, 'linewidth', 2)
end

ylim([-3 3])
box off 
axis off 

print(h1,'-depsc','chain2.eps')
