clc;
clear;
samples = 10000;
vertical = [];
horizontal = [];
for step = 1:31
no_transport = 0;
for i = 1:samples
[x,y]=random_walk(step);
distance = abs(x)+abs(y);
if distance<=4
    no_transport = no_transport+1;
end
end
no_transport_percentage = 100*no_transport/samples;
sprintf('Walk size = %.2f /  percentage of no transport = %.2f', step,no_transport_percentage)
vertical(step) = no_transport_percentage;
horizontal(step) = step;
end
plot(horizontal,vertical,'-rs','LineWidth',2);
xlabel('Step');
ylabel('Percentage of no transport');
grid
