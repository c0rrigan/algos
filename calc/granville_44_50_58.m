results=fopen('results','w');
diary results;
diary on;

syms f(x) x;
%Problema 50
f(x)=(x+2)^2*(x^2+2)^(1/2);
disp('Problema 50');
pretty(diff(f(x)));
%Problema 51
f(x)=(1+2*x)^(1/2)/(1+3*x)^(1/3);
disp('Problema 51');
pretty(diff(f(x)));
%Problema 52
f(x)=(x^2-x)^3;
res = diff(f(x));
valor = subs(res,x,3);
disp('Problema 52, x = 3:');
disp(valor);
%Problema 53
f(x)=x^(1/3)+sqrt(x);
res = diff(f(x));
valor = subs(res,x,64);
disp('Problema 53, x = 64:');
disp(valor);
%Problema 54
f(x)=(2*x)^(1/3)+(2*x)^(2/3);
res = diff(f(x));
valor = subs(res,x,4);
disp('Problema 54, x = 4:');
disp(valor);
%Problema 55
f(x)=sqrt(9+4*x*x);
res = diff(f(x));
valor = subs(res,x,2);
disp('Problema 55, x = 2:');
disp(valor);
%Problema 56
f(x)=1/sqrt(25-x^2);
res = diff(f(x));
valor = subs(res,x,3);
disp('Problema 56, x = 3:');
disp(valor);
%Problema 57
f(x)=sqrt(16+3*x)/x;
res = diff(f(x));
valor = subs(res,x,3);
disp('Problema 57 ,x = 3:');
disp(valor);
%Problema 58
f(x)=x*sqrt(8-x^2);
res = diff(f(x));
valor = subs(res,x,2);
disp('Problema 58,x = 2:');
disp(valor);

diary off;
fclose(results);
