
% Part-A

G=tf([1 2 1],[1 28 160]);
P=tf([1],[1 3.2 3.56 0]);

sys1=series(G,P);
rlocus(sys1)

% Part-B

T(1)= tf(2,[1 4]);
T(2)= tf([0.5 5],[1 2.5 5]);
T(3)= tf([2 1],[1 2 2 1]);

for i= 1:3
    t= 0:.1:20;
    u=(t.^2)/2;
    figure
    lsim(T(i),u,t);
    legend('Respons of Parabolic')
end 
