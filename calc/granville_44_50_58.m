results=fopen('results','w');
diary results;
diary on;

syms f(x) x;
%Problema 50
f(x)=(x+2)^2*(x^2+2)^(1/2);
disp('Problema 50');
pretty(diff(f(x)));
%Problema 51
f(x)=(1+2*x)^(1/2)/(1+3*x)^(1/3)
disp('Problema 51');
pretty(diff(f(x)));
%Problema 52
f(x)=(x^2-x)^3;
disp('Problema 52');
%Problema 53
f(x)=x^(1/3)+sqrt(x);
%Problema 54
f(x)=(2*x)^(1/3)+(2*x)^(2/3);
%Problema 55
f(x)=sqrt(9+4*x*x);
%Problema 56
f(x)=1/sqrt(25-x^2);
%Problema 57
f(x)=sqrt(16+3x)/x;
%Problema 58
f(x)=x*sqrt(8-x^2);

fclose(results);
