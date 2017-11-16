results = fopen('results','w');
diary results;
diary on;

syms f(x) x;
%Poblema 1
f(x)= x^4;
disp("Problema 1");
pretty(int(f(x),x));
%Problema 2
f(x)= x^(-2);
disp("Problema 1");
pretty(int(f(x),x));
%Problema 3
f(x)= x^(2/3);
disp("Problema 1");
pretty(int(f(x),x));
%Problema 4
f(x)= x^(-1/2);
disp("Problema 1");
pretty(int(f(x),x));
%Problema 5
f(x)= x^(-1/3);
disp("Problema 1");
pretty(int(f(x),x));
%Problema 6
syms a f(y) y;
f(y)= 3*a*y^2;
disp("Problema 1");
pretty(int(f(y),y));
%Problema 7
syms f(t) t;
f(t)= 2*t^(-2);
disp("Problema 1");
pretty(int(f(t),t));
%Problema 8
f(x)= sqrt(x*x);
disp("Problema 1");
pretty(int(f(x),x));
%Problema 9
f(x)= (2*x)^(-1/2);
disp("Problema 1");
pretty(int(f(x),x));
%Problema 10
f(t)=(3*t)^(1/3);
disp("Problema 1");
pretty(int(f(t),t));
%Problema 11
f(x)= x^(3/2)-2*x^(2/3)+5*sqrt(x)-3;
disp("Problema 1");
pretty(int(f(x),x));
%Problema 12
f(x)= (4*x^2-2*sqrt(x))/x;
disp("Problema 1");
pretty(int(f(x),x));
%Problema 13
f(x)= x^2/x-2/x^2;
disp("Problema 1");
pretty(int(f(x),x));
%Problema 14
f(x)= sqrt(x)*(3*x-2);
disp("Problema 1");
pretty(int(f(x),x));
%Problema 15
f(x)= (x^3-6*x+5)/x;
disp("Problema 1");
pretty(int(f(x),x));
%Problema 16
syms b;
f(x)= sqrt(a+b*x);
disp("Problema 1");
pretty(int(f(x),x));
%Problema 17
f(y)=(a-b*y)^(-1/2);
disp("Problema 1");
pretty(int(f(y),y));
%Problema 18
f(t)=(a+b*t)^2;
disp("Problema 1");
pretty(int(f(t),t));
%Problema 19
f(x)=x*(2+x^2)^2;
disp("Problema 1");
pretty(int(f(x),x));
%Problema 20
f(y)=y*(1-b*y^2);
disp("Problema 1");
pretty(int(f(y),y));
%Problema 21
f(t)=t*sqrt(2*t^2+3);
disp("Problema 1");
pretty(int(f(t),t));
%Problema 22
f(x)=x*(2*x+1)^2;
disp("Problema 1");
pretty(int(f(x),x));
%Problema 23
f(x)= (4*x^2)/(sqrt(x^3+8));
disp("Problema 1");
pretty(int(f(x),x));
%Problema 24
syms f(z) z;
f(z)= (6*z)/(5-3*z^2)^2;
disp("Problema 1");
pretty(int(f(x),x));
%Problema 25
f(x)= (sqrt(a)-sqrt(x))^2;
disp("Problema 1");
pretty(int(f(x),x));
%Problema 26
f(x)= (sqrt(a)-sqrt(x))^2/sqrt(x);
disp("Problema 1");
pretty(int(f(x),x));
%Problema 27
f(x)= sqrt(x)*(sqrt(a)-sqrt(x))^2;
disp("Problema 1");
pretty(int(f(x),x));
%Problema 28


diary off;
fclose(results);