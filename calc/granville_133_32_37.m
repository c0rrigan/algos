results = fopen('resuts','w');
diary results;
diary on;
syms f(x) x;
%Problema 32
%Funcion verseno no disponible
%Problema 33
f(x)=asec(sqrt(x));
disp('Problema 33');
pretty(diff(f(x)));
%Problema 34
f(x)=exp(x)*acos(x);
disp('Problema 34');
pretty(diff(f(x)));
%Problema 35
f(x)=log(atan(x));
disp('Problema 35');
pretty(diff(f(x)));
%Problema 36
f(x)=sqrt(asin(2*x));
disp('Problema 36');
pretty(diff(f(x)));
%Problema 37
f(x)=acos(sqrt(x))/(sqrt(x));
disp('Problema 37');
pretty(diff(f(x)));

diary off;
fclose(results); 

