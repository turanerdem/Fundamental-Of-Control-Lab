sys=tf([1 16 69 54],[1 17 101 247 210]); % Değerlerin ekranda görünmesini istiyorsak ";" silmek yeterli!!!
sys1=tf([1 0 1 10 0],[1 4 3 0 10 1207]);

% Part-A
n=[1,16,69,54]
d=[1,17,101,247,210]
[z,k,p]=tf2zp(n,d)
[r,k,p]=residue(n,d)
[z,p,k]=tf2zp(n,d)

%Part-B
p=[-7,-5,-3,-2]' % Vektör hatasını engellemek için sonuna kesme işareti ekledik!!
z=[-7,-9]'
k=[1]
[n,d]=zp2tf(z,p,k)

p=[-7,-5,-3,-2]'
z=[-2,-3,-5]'
k=[1]
[n,d]=zp2tf(z,p,k)
minreal(n,d)

%Part-C

a=[1,17,101,247,210]
b=[1,16,69,54]
t=0:0.1:5;
y=step(b,a,t); % Step Response!!!
plot(t,y,'dg','Linewidth',0.8);
title('Lab1')
hold on
step(b,a)
