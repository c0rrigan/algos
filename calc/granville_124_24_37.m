results = fopen('resuts','w');
diary results;
diary on;
syms f(x) x;
%Problema 24
f(x)=log(sqrt((1+sin(x))/(1-sin(x))));
disp('Problema 24');
pretty(diff(f(x)));
%Problema 25
syms a;
f(x)=sin(x+a)*cos(x-a);
disp('Problema 25');
disp('theta = x');
pretty(diff(f(x)));
%Problema 26
f(x)=(sin(pi-x))^2;
disp('Problema 26');
pretty(diff(f(x)));
%Problema 27
f(x)=1/3*(tan(x))^3-tan(x)-x;
disp('Problema 27');
disp('theta = x');
pretty(diff(f(x)));
%Problema 28
f(x)=x^sin(x);
disp('Problema 28');
pretty(diff(f(x)));
%Problema 29
f(x)=(cos(x))^x;
disp('Problema 29');
pretty(diff(f(x)));
%Problema 30
syms k;
f(x)=sin(k*x);
disp('Problema 30');
pretty(diff(f(x)),x,2);
%Problema 31
f(x)=1/3*cos(2*x);
disp('Problema 31');
disp('theta = x');
pretty(diff(f(x)),x,2);
%Problema 32
syms f(v) v;
f(v)=tan(v);
disp('Problema 32');
pretty(diff(f(v)),v,2);
%Problema 33
f(x)=x*cos(x);
disp('Problema 33');
pretty(diff(f(x)),x,2);
%Problema 34
f(x)=sin(x)/x;
disp('Problema 34');
pretty(diff(f(x)),x,2);
%Problema 35
syms f(t) t;
f(t)=exp(t)*cos(t);
disp('Problema 35');
pretty(diff(f(t)),t,2);
%Problema 36
f(t)=exp(-t)*sin(2*t);
disp('Problema 36');
pretty(diff(f(t)),t,2);
%Problema 37
syms b;
f(x)=exp(a*x)*sin(b*x);
disp('Problema 37');
pretty(diff(f(x)),x,2);

diary off;
fclose(results);