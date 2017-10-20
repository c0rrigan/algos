results = fopen('resuts','w');
diary results;
diary on;
syms f(x) x;
%Problema 43
f(x)=exp(x/2)/(x+1);
res = diff(f(x));
valor = subs(res,x,1);
disp('Problema 43,x=1');
pretty(valor);
%Problema 44
f(x)=log10(sqrt(25-4*x));
res = diff(f(x));
valor = subs(res,x,5);
disp('Problema 44,x=5');
pretty(valor);
%Problema 45
f(x)=10^(sqrt(x));
res = diff(f(x));
valor = subs(res,x,4);
disp('Problema 45,x=4');
pretty(valor);
%Problema 46
f(x)=(3/x)^x;
res = diff(f(x));
valor = subs(res,x,3);
disp('Problema 46,x=3');
pretty(valor);
%Problema 47
f(x)=(x^3*sqrt(x^2+9))/(20-3*x)^(1/3);
res = diff(f(x));
valor = subs(res,x,4);
disp('Problema 47,x=4');
pretty(valor);
%Problema 48
syms c;
f(x)=log(c*x);
disp('Problema 48');
pretty(diff(f(x),x,2));
%Problema 49
syms n;
f(x)=exp(n*x);
disp('Problema 49');
pretty(diff(f(x),x,2));
%Problema 50
f(x)=x*log(x);
disp('Problema 50');
pretty(diff(f(x),x,2));
%Problema 51
f(x)=exp(x^2);
disp('Problema 51');
pretty(diff(f(x),x,2));

diary off;
fclose(results);