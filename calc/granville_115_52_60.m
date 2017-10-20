results = fopen('resuts','w');
diary results;
diary on;

syms f(x) x  a;
%Problema 52
f(x)=log((x-a)/(x+a));
disp('Problema 52');
pretty(simplify(diff(f(x),x,2)));
%Problema 53
f(x)=exp(x)/x^2;
disp('Problema 53');
pretty(simplify(diff(f(x),x,2)));
%Problema 54
f(x)=log((sqrt(a^2-x^2))/x);
disp('Problema 54');
pretty(simplify(diff(f(x))));
%Problema 55
f(x)=(log(sqrt(a^2+x^2)))/x;
disp('Problema 55');
pretty(diff(f(x)));
%Problema 56
f(x)=log10((x^2+a^2)/(x+a));
disp('Problema 56');
pretty(simplify(diff(f(x))));
%Problema 57
syms f(t) t;
f(x)=log(t/(sqrt(2*t+3)));
disp('Problema 57');
pretty(simplify(diff(f(x))));
%Problema 58
f(x) = exp(sqrt(x))*log(sqrt(x));
disp('Problema 58');
pretty(diff(f(x)));
%Problema 59
f(x)=10^t*log10(t);
disp('Problema 59');
pretty(diff(f(x)));
%Problema 60
syms n;
f(x)=(a*exp(1))^n*x
disp('Problema 60');
pretty(diff(f(x)));

diary off;
fclose(results);