results = fopen('resuts','w');
diary results;
diary on;

%Problema 34
syms f(x) x f(t) t a b;
f(x)=(a/t)^t;
disp('Problema 34');
pretty(diff(f(x)));
%Problema 35
f(x)=(x*(3*x+a)^(1/3))/sqrt(2*x+b);
disp('Problema 35');
pretty(diff(f(x)));
%Problema 36
f(x)=(sqrt(4+x^2))/(x*(sqrt(4-x)));
disp('Problema 36');
pretty(diff(f(x)));
%Problema 37
syms n m;
f(x)=x^n*(a+b*x)^m;
disp('Problema 37');
pretty(diff(f(x)));
%Problema 38
f(x)=log(x^2+2);
res = diff(f(x));
valor = subs(res,x,4);
disp('Problema 38,x=4');
pretty(valor);
%Problema 39
f(x)=log10(4*x-3);
res = diff(f(x));
valor = subs(res,x,2);
disp('Problema 39,x=2');
pretty(valor);
%Problema 40
f(x)=x*log(sqrt(x+3));
res = diff(f(x));
valor = subs(res,x,6);
disp('Problema 40,x=6');
pretty(valor);
%Problema 41
f(x)=x*exp(-2*x);
res = diff(f(x));
valor = subs(res,x,1/2);
disp('Problema 41,x=1/2');
pretty(valor);
%Problema 42
f(x)=log(x^2)/x;
res = diff(f(x));
valor = subs(res,x,4);
disp('Problema 42,x=4');
pretty(valor);

diary off;
fclose(results);