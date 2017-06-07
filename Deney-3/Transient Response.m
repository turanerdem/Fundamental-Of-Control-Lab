sys=tf([625],[1 0 625])
step(sys)
damp(sys)
figure
pzmap(sys)

%*************************
clc
clear all

s=tf('s');

ts1= 800/(s^2+12*s+400);
ts2= 450/(s^2+90*s+900);
ts3= 225/(s^2+30*s+225);
ts4= 625/(s^2+625);

step(ts1)
[Wn1,zeta1]=damp(ts1)
hold on
step(ts2)
[Wn2,zeta2]=damp(ts2)
hold on
step(ts3)
[Wn3,zeta3]=damp(ts3)

figure 
pzmap(ts1)


%***************************

s= tf('s');
sys1 =tf([12],[1 8 12]);
sys2 =tf([16],[1 8 16]);
sys3 =tf([20],[1 8 20]);
sys4 =tf([50],[1 8 50]);

step(sys1)
hold on
pause
step(sys2)
hold on
pause
step(sys3)
hold on
pause
step(sys4)
hold on

%************************

clc
clear all

s=tf('s');

ts1= 25/((s+1)*(s^2+4*s+25));
ts2= 25/((s/5+1)*(s^2+4*s+25));
ts3= 25/((s/10+1)*(s^2+4*s+25));
ts4= 25/((s/20+1)*(s^2+4*s+25));
step(ts1)
[Wn1,zeta1]=damp(ts1)
hold on
step(ts2)
[Wn2,zeta2]=damp(ts2)
hold on
step(ts3)
[Wn3,zeta3]=damp(ts3)
hold on
step(ts4)
[Wn4,zeta4]=damp(ts4)

%******************************
clc
clear all

s=tf('s');

ts1= 25/(s^2+4*s+25);
ts2= 25*(s/5+1)/(s^2+4*s+25);
ts3= 25*(s/10+1)/(s^2+4*s+25);
ts4= 25*(s/20+1)/(s^2+4*s+25);
step(ts1)
[Wn1,zeta1]=damp(ts1)
hold on
step(ts2)
[Wn2,zeta2]=damp(ts2)
hold on
step(ts3)
[Wn3,zeta3]=damp(ts3)
hold on
step(ts4)
[Wn4,zeta4]=damp(ts4)

