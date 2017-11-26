results = fopen('results','w');
diary results;
diary on;
syms f(x) x a f(s) s f(y) y f(u) u f(r) r f(t) t;
%Problema 1
f(x)=(1+2*x)/(1+x^2);
disp("Problema 1");
pretty(int(f(x),x));
%Problema 2
f(x)=(2*x+1)/sqrt(x*x-1);
disp("Problema 1");
pretty(int(f(x),x));
%Problema 3
f(x)=(x-1)/sqrt(1-x^2);
disp("Problema 1");
pretty(int(f(x),x));
%Problema 4
f(x)=(3*x-1)/(x*x+9);
disp("Problema 1");
pretty(int(f(x),x));
%Problema 5
f(s)=(3*s-2)/sqrt(9-s*s);
disp("Problema 1");
pretty(int(f(s),s));
%Problema 6
f(x)=(x+3)/sqrt(x*x+4);
disp("Problema 1");
pretty(int(f(x),x));
%Problema 7
f(x)=(2*x-5)/(3*x*x-2);
disp("Problema 1");
pretty(int(f(x),x));
%Problema 8
f(t)=(5*t-1)/sqrt(3*t*t-9);
disp("Problema 1");
pretty(int(f(x),x));
%Problema 9
f(x)=(x+3)/(6*x-x*x);
disp("Problema 1");
pretty(int(f(x),x));
%Problema 10
f(x)=(2*x+5)/(x*x+2*x+5);
disp("Problema 1");
pretty(int(f(x),x));
%Problema 11
f(x)=(1-x)/(4*x*x-4*x-3);
disp("Problema 1");
pretty(int(f(x),x));
%Problema 12
f(x)=(3*x-2)/(1-6*x-9*x*x);
disp("Problema 1");
pretty(int(f(x),x));
%Problema 13
f(x)=(x+3)/sqrt(x*x+2*x);
disp("Problema 1");
pretty(int(f(x),x));
%Problema 14
f(x)=(x+2)/sqrt(4*x-x*x);
disp("Problema 1");
pretty(int(f(x),x));
%Problema 15
f(x)=x/sqrt(27+6*x-x*x);
disp("Problema 1");
pretty(int(f(x),x));
%Problema 16
f(x)=(3*x+2)/sqrt(19-5*x+x*x);
disp("Problema 1");
pretty(int(f(x),x));
diary off;
fclose(results);
