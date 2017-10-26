results = fopen('resuts','w');
diary results;
diary on;
%Problema 19
syms f(r) a r;
f(r)=atan((a+r)/(1-a*r));
disp('Problema 19');
pretty(diff(f(x)));
%Problema 20
%Funcion verseno no disponible
%Problema 21
syms f(x) x y;
f(x)=1/3*atan(x)+1/6*log(x^2+1)-1/6*x^·;
disp('Problema 21');
pretty(diff(f(x)));
%Problema 22
f(x)=x*asin(x);
res = diff(f(x));
valor = subs(res,x,0.5);
disp('Problema 22,x=1/2');
pretty(valor);
%Problema 23
f(x)=x*acos(x);
res = diff(f(x));
valor = subs(res,x,-0.5);
disp('Problema 23,x=-1/2');
pretty(valor);
%Problema 24
f(x)=atan(x)/x;
res = diff(f(x));
valor = subs(res,x,1);
disp('Problema 24,x=1');
pretty(valor);
%Problema 25
f(x)=sqrt(x)*acot(x/4);
res = diff(f(x));
valor = subs(res,x,4);
disp('Problema 25,x=4');
pretty(valor);
%Problema 26
f(x)=asec(2*x)/sqrt(x);
res = diff(f(x));
valor = subs(res,x,1);
disp('Problema 26,x=1');
pretty(valor);
%Problema 27
f(x)=x^2*acsc(sqrt(x));
res = diff(f(x));
valor = subs(res,x,1);
disp('Problema 27,x=2');
pretty(valor);
%Problema 28
f(x)=asin(sqrt(x));
disp('Problema 28');
pretty(diff(f(x)));
%Problema 29
f(x)=atan(2/x);
disp('Problema 29');
pretty(diff(f(x)));
%Problema 30
f(x)=x*acos(x/2);
disp('Problema 30');
pretty(diff(f(x)));
%Problema 31
f(x)=acot(2*x)/x;
disp('Problema 31');
pretty(diff(f(x)));

diary off;
fclose(results); 