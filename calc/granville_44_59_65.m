results=fopen('results','w');
diary results;
diary on;

syms f(x) x;

%Problema 59
f(x)=x*x*sqrt(1+x^3);
res = diff(f(x));
valor = subs(res,x,2);
disp('Problema 59, x = 2:');
disp(valor);
%Problema 60
f(x)=(4-x^2)^3;
res = diff(f(x));
valor = subs(res,x,3);
disp('Problema 60, x = 3:');
disp(valor);
%Problema 61
f(x)=(x^2+2)/(2-x^2);
res = diff(f(x));
valor = subs(res,x,2);
disp('Problema 61, x = 2:');
disp(valor);
%Problema 62
f(x)=sqrt(5-2*x)/(2*x+1);
res = diff(f(x));
valor = subs(res,x,1/2);
disp('Problema 62, x = 1/2:');
disp(valor);
%Problema 63
f(x)=x*sqrt(3+2*x);
res = diff(f(x));
valor = subs(res,x,3);
disp('Problema 63, x = 3:');
disp(valor);
%Problema 64
f(x)=sqrt((4*x+1)/(5*x-1));
res = diff(f(x));
valor = subs(res,x,2);
disp('Problema 64, x = 2:');
disp(valor);
%Problema 65
f(x)=sqrt((x^2-5)/(10-x^2));
res = diff(f(x));
valor = subs(res,x,3);
disp('Problema 65, x = 3:');
disp(valor);

diary off;
fclose(results);