results=fopen('results','w');
diary results;
diary on;

%Problema 21
syms f(x) x a;
f(x)=sqrt(a*x)+a/sqrt(a*x);
disp('Problema 21');
pretty(diff(f(x)));
%Problema 22
f(x)=sqrt(1-2*x);
disp('Problema 22');
disp('theta=x');
pretty(diff(f(x)));
%Problema 23
syms f(t) t
f(t)=(2-3*t^2)^3;
disp('Problema 23');
pretty(diff(f(t)));
%Problema 24
f(x)=(4-9*x)^(1/3);
disp('Problema 24');
pretty(diff(f(x)));
%Problema 25
f(x)=1/sqrt(a^2-x^2);
disp('Problema 25');
pretty(diff(f(x)));
%Problema 26
f(x)=(2-5*x)^(3/5);
disp('Problema 26');
disp('theta=x');
pretty(diff(f(x)));
%Problema 27
syms b;
f(x)=(a-b/x)^2;
disp('Problema 27');
pretty(simplify(diff(f(x))));
%Problema 28
f(x)=(a+b/x^2)^3;
disp('Problema 28');
pretty(diff(f(x)));
%Problema 29
f(x)=x*sqrt(a+b*x);
disp('Problema 29');
pretty(diff(f(x)));
syms f(t) t;
%Problema 30
f(t)=t*sqrt(a^2+t^2);
disp('Problema 30');
pretty(diff(f(t)));
%Problema 31
f(x)=(a-x)/(a+x);
disp('Problema 31');
pretty(diff(f(x)));
%Problema 32
f(x)=(a^2+x^2)/(a^2-x^2);
disp('Problema 32');
pretty(diff(f(x)));
diary off;
fclose(results);