function[x,y] = random_walk(n);
x = 0;
y = 0;
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
end
end