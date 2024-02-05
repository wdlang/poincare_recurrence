% h(t) 
clear all; close all; clc; 

t = 0:0.01:100;
h = cos(t) + cos(sqrt(2)*t) + cos(sqrt(3)*t ) + cos(sqrt(5)*t );

h1 = figure;

plot(t, h )