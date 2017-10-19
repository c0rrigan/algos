results = fopen('results','w');
diary results;
diary on;

syms f(x) x a b;
%Problema 1
f(x)=log(a*x+b);
disp('Problema 1');
pretty(diff(f(x)));
%Problema 2
f(x)=log(a*x*x+b);
disp('Problema 2');
pretty(diff(f(x)));
%Problema 3
f(x)=log(a*x+b)^2;
disp('Problema 3');
pretty(diff(f(x)));
%Problema 4
syms n;
f(x)=log(a*x^n);
disp('Problema 4');
pretty(diff(f(x)));
%Problema 5
f(x)=log(x^3);
disp('Problema 5');
pretty(diff(f(x)));
%Problema 6
f(x)=(log(x))^3;
disp('Problema 6');
pretty(diff(f(x)));
%Problema 7
f(x)=log(2*x^3-3*x^2+4);
disp('Problema 7');
pretty(diff(f(x)));
%Problema 8
f(x)=log10(2/x);
disp('Problema 8');
pretty(diff(f(x)));
%Problema 9
f(x)=log((x^2)/(1+x^2));
disp('Problema 9');
pretty(diff(f(x)));
%Problema 10
f(x)=log(sqrt(9-2*x^2));
disp('Problema 10');
pretty(diff(f(x)));
%Problema 11
f(x)=log(a*x*sqrt(a+x));
disp('Problema 11');
pretty(diff(f(x)));
%Problema 12
f(x)=x*log(x);
disp('Problema 12');
pretty(diff(f(x)));
%Problema 13
f(x)=ln(x+sqrt(1+x^2));
disp('Problema 13');
pretty(diff(f(x)));
%Problema 14
syms f(t) t;
f(t)=ln(sqrt((a+b)/(a-b)));
disp('Problema 14');
pretty(diff(f(x)));
diary off;
fclose(results);