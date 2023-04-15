clc;
clear;
n = input('Number of steps:');
x = 0;
y = 0;
x_value = [0];
y_value = [0];
for i = 1:n
 step1 = randperm(4); 
 step = step1(3);
 if step == 1
     y = y+1;     
 elseif step == 2
     y = y-1;
 elseif step == 3
     x = x+1;
 else x = x-1;
 end
 x_value(i+1)=x;
 y_value(i+1)=y;
 %plot(x,y,'-k')
 %hold on
end
plot(x_value,y_value,'r','LineWidth',2)
grid