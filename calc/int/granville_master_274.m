results = fopen('results','w');
diary results;
diary on;
syms f(x) x f(y) y m n f(t) t;
%Problema 25
f(x)=x*sex(x/2)^2;
disp('Problema 1');
pretty(int(f(x),x));
%Problema 26
f(x)=x*cos(2*x)^2;
disp('Problema 1');
pretty(int(f(x),x));
%Problema 27
f(x)=x*x*cos(x);
disp('Problema 1');
pretty(int(f(x),x));
%Problema 28
f(x)=asin(m*x);
disp('Problema 1');
pretty(int(f(x),x));
%Problema 29
f(x)=acot(x/2);
disp('Problema 1');
pretty(int(f(x),x));
%Problema 30
f(x)=acos(1/x);
disp('Problema 1');
pretty(int(f(x),x));
%Problema 31
f(x)=acos(1/x);
disp('Problema 1');
pretty(int(f(x),x));
%Problema 32
f(x)=acsc(n*t);
disp('Problema 1');
pretty(int(f(x),x));
%Problema 33
f(x)=asin(sqrt(x/2));
disp('Problema 1');
pretty(int(f(x),x));
%Problema 34
f(x)=asin(x)*x^3;
disp('Problema 1');
pretty(int(f(x),x));
%Problema 35
f(x)=(asin(x)*x)/sqrt(1-x^2);
disp('Problema 1');
pretty(int(f(x),x));
%Problema 36
f(x)=atan(sqrt(x))/x^2;
disp('Problema 1');
pretty(int(f(x),x));
%Problema 37
f(x)=atan(x)*x^3;
disp('Problema 1');
pretty(int(f(x),x));
%Problema 38
f(x)=(exp(x)+2*x)^2;
disp('Problema 1');
pretty(int(f(x),x));
%Problema 39
f(x)=(x*x+2^x)^2;
disp('Problema 1');
pretty(int(f(x),x));
%Problema 40
disp('theta = x');
f(x)=exp(-x)*cos(x/2);
disp('Problema 1');
pretty(int(f(x),x));
%Problema 41
f(t)=exp(t/5)*sin(pi*t);
disp('Problema 1');
pretty(int(f(t),t));
%Problema 42
f(x)=exp(3*x)*cos(x/3);
disp('Problema 1');
pretty(int(f(x),x));
%Problema 43
f(t)=exp(-t/2)os(2*t);
disp('Problema 1');
pretty(int(f(t),t));
%Problema 44
f(t)=exp(t/4)*cos(pi*t)
disp('Problema 1');
pretty(int(f(t),t));
%Problema 45
f(t)=exp(-t/4)*sin(pi*t/4);
disp('Problema 1');
pretty(int(f(t),t));
%Problema 46
disp('theta = x');
f(x)=csc(x)^3;
disp('Problema 1');
pretty(int(f(x),x));
diary off;
fclose(results);
