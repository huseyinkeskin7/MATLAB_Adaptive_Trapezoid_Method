clc;
clear;
close all;
% the 'clc' command deletes the command window when we press the execute key.
% the 'clear' command deletes the workspace field when we press the execute key.
% the 'close all' command closes the graphics tabs that were previously open when we pressed the execute key.

x = intTrapezoid(@keskin19,1,3);
% In the equation I defined in the intTrapezoid file,
% I entered the value a as 1, the value b as 3, 
% and defined the resulting value as the variable x.

y = intTrapezoid(@keskin19,3,5);
% In the equation I defined in the intTrapezoid file,
% I entered the value a as 3, the value b as 5, 
% and defined the resulting value as the variable y.

z = intTrapezoid(@keskin19,5,7);
% In the equation I defined in the intTrapezoid file,
% I entered the value a as 5, the value b as 7, 
% and defined the resulting value as the variable z.

v = intTrapezoid(@keskin19,7,9);
% In the equation I defined in the intTrapezoid file,
% I entered the value a as 7, the value b as 9, 
% and defined the resulting value as the variable v.

integralx = integral(@keskin19,1,3);
% i took the integral of the value of x with the integral command,
% and defined this variable as integralx
integraly = integral(@keskin19,3,5);
% i took the integral of the value of  with the integral command,
% and defined this variable as integraly
integralz = integral(@keskin19,5,7);
% i took the integral of the value of z with the integral command,
% and defined this variable as integralz
integralv = integral(@keskin19,7,9);
% i took the integral of the value of v with the integral command,
% and defined this variable as integralv

rng default
% random values keep the first value constant in case the system is started again

randfora = 1 + (3-1) * rand(1);
% i used the rand function to assign a random number between 1 and 3
% for the value of random değerleri sabit tutara and defined this variable as randfora

randforb = 7 + (9-7) * rand(1);
% i used the rand function to assign a random number between 7 and 9
% for the value of b and defined this variable as randforb

tol = 0.05;
% i defined the tolerance value

[estInt, intervals] = adapTrapezoid(@keskin19, randfora, randforb, tol);
% I called adaptrapezid with the adapTrapezoid command. I also took the values 
% a and b as random assigned values, and I also defined the tolerance value

integralA = integral(@keskin19, randfora, randforb);
% I took the integral of the value we obtained

errorvalue = (estInt - integralA)/(integralA*100);
% To find out the error value, I wrote the equation and defined it as the error value

col1 = intervals(:,1);
col2 = intervals(end);
sonsutun= [col1 ;col2];
% here I have separated the intervalsecond columns

h = 1:0.1:9; 

plot(h, keskin19(h),'LineWidth',1.5,'Color','r');
xline(sonsutun);
title('Graph of Interval')

grid on
% I printed the graph with the Plot command and set the color of
% our graph and the thickness of our line with the LineWidth and 
% Color command. I also added the x-axis values and the title of 
% the graph along with the commands