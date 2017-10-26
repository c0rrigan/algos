results = fopen('resuts','w');
diary results;
diary on;
%Problema 4
syms f(x) x a;
f(x)=asin(x/a);
disp('Problema 24');
pretty(diff(f(x)));
%Problema 5
f(x)=asec(x/a);
disp('Problema 24');
pretty(diff(f(x)));
%Problema 6
f(x)=acot(x/a);
disp('Problema 24');
pretty(diff(f(x)));
%Problema 7
f(x)=asec(1/x);
disp('Problema 24');
pretty(diff(f(x)));
%Problema 8
f(x)=acsc(2*x);
disp('Problema 24');
pretty(diff(f(x)));
%Problema 9
f(x)=asin(sqrt(x));
disp('Problema 24');
pretty(diff(f(x)));
%Problema 11
%funcion verseno no disponible
%Problema 12
f(x)=x*asin(2*x);
disp('Problema 24');
pretty(diff(f(x)));
%Problema 13
syms f(u) u;
f(u)=u*sqrt(a^2-u^2)+a^2*asin(u/a);
disp('Problema 24');
pretty(diff(f(u)));
%Problema 14
f(x)=sqrt(a^2-x^2)+a*asin(x/a);
disp('Problema 24');
pretty(diff(f(x)));
%Problema 15
syms f(u) u;
f(u)=a^2*asin(u/a)-u*sqrt(a^2-u^2);
disp('Problema 15');
pretty(diff(f(u)));
%Problema 16
f(u)=u/(sqrt(a^2-u^2))-asin(u/a);
disp('Problema 16');
pretty(diff(f(u)));
%Problema 17
f(u)=asin(u/a)+(sqrt(a^2-u^2)/u);
disp('Problema 17');
pretty(diff(f(u)));
%Problema 18
f(v)=a*asin(1-u/a)+sqrt(2*a*u+u^2);
disp('Problema 18');
pretty(diff(f(u)))


diary off;
fclose(results); 