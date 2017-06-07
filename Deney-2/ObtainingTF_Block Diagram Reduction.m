%Part-A

k=[2;5;10]
C=tf([1],[1 12])
D=tf([20],[1 0])
E=tf([0.2 0],[1])
for i=1:1:3
    A=tf([1.4*k(i)],[1 0]);
    B=tf([k(i)],[1]);
    
    sys1=parallel(A,B); %Tanımlanan A ve B için transfer fonksiyon aritmetikleri burada başlıyor
    sys2=series(C,D);
    sys3=feedback(sys2,C);
    sys4=series(sys3,sys1);
    sys5=feedback(sys4,1);
    
    step(sys5)
    hold on 
    pause
end

%Part-B

A=tf([10],[1])
B=tf([1],[1 -10])
C=tf([1 0],[1 0 48])
D=tf([1],[1 0 0])
E=tf([150],[1])
F=tf([8 5],[1 2 1])
G=tf([1 0 2],[1 0 0 28])

sys1=series(B,C)
sys2=feedback(D,E,+1)
sys3=feedback(sys1,F)
sys4=series(sys2,sys3)
sys5=feedback(sys4,G)
sys6=series(A,sys5)
