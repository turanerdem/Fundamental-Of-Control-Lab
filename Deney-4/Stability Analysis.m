% Part-A

clc
clear all
loop11= tf([20], [1 10 0]);
loop12 = tf([1 2.2], [1 0]);
A = feedback(loop11, loop12);
k2=[-3; -0.78; 5];
for i=1:length(k2)
    k2tf=tf(k2(i),1);
    innerloop2=series(k2tf,A);
    closedloops=feedback(innerloop2,1)
    figure(1)
    step(closedloops)
    hold on
    figure(2)
    pzmap(closedloops)
    hold on
end


% Part-B


clc
clear all
close all
k2=[0:0.5:10];
for i=1:length(k2)
    k2(i)
    loop1= tf([1], [1 5 (k2(i)-3) k2(i)])
    closedloops=feedback(loop1,1)
    %figure(1)
    %step(closedloops)
    %hold on
    figure(2)
    pzmap(closedloops)
    hold on
    %pause
end
