% lattice 
clear all; close all; clc; 

u1 = [1, 0];
u2 = [-1/3, 1];

v1 = 2*u2 + 3*u1;
v2 = 3*u2 + 4*u1;

h1 = figure;
hold on 
axis equal 
xlim([-1.5, 4 ])
ylim([-1.5, 3 ])
axis off
for s1 = -3: 9;
    for s2 = -3: 9
        x = s1*u1 + s2*u2;
        plot(x(1), x(2), '.','color','k','MarkerSize',15)
    end
end

arrow([0,0], u1, 'BaseAngle',30,'FaceColor','b','EdgeColor','b')
arrow([0,0], u2, 'BaseAngle',30,'FaceColor','b','EdgeColor','b')
arrow([0,0], v1, 'BaseAngle',30,'FaceColor','r','EdgeColor','r')
arrow([0,0], v2, 'BaseAngle',30,'FaceColor','r','EdgeColor','r')

text(u1(1)-0.4, u1(2)-0.3 ,'$ v_1$','fontsize',26,'Interpreter','latex')
text(u2(1)-0.3, u2(2)-0.4 ,'$ v_2$','fontsize',26,'Interpreter','latex')
text(v1(1)-0.2, v1(2)-0.4 ,'$ u_1$','fontsize',26,'Interpreter','latex')
text(v2(1)-0.8, v2(2)-0.2 ,'$ u_2$','fontsize',26,'Interpreter','latex')

str = strcat('lattice.eps');
print(h1,'-depsc',str)