results = fopen('resuts','w');
diary results;
diary on;
syms f(s) s f(x) x;
%Problema 61
f(s)=s^2 * 2^s;
disp('Problema 61');
pretty(diff(f(s)));
%Problema 62
f(x)=(x/a)^(sqrt(x));
disp('Problema 62');
pretty(diff(f(x)));
diary off;
fclose(results);