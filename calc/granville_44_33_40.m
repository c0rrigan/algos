results=fopen('results','w');
diary results;
diary on;

syms f(x) f(t) t x a b;

%Problema 33
f(x)=((a*a+x*x)^(1/2));
disp('Problema 33');
pretty(diff(f(x)));
%Problema 34
f(x)=x/(a*a+x*x)^(1/2);
disp('Problema 35');
pretty(diff(f(x)));
%Problema 35
disp('Problema 35');
disp('theta=x');
f(x)=x^2*(3-4*x)^(1/2);
pretty(diff(f(x)));
%Problema 36
syms c;
f(x)=((1-c*x)/(1+x*c));
disp('Problema 36');
pretty(diff(f(x)));
%Problema 37
f(x)=sqrt((a^2+x^2)/(a^2-x^2));
disp('Problema 37');
pretty(diff(f(x)));
%Problema 38
f(x)=((2+3*t)/(2-3*t))^(1/3);
disp('Problema 38');
pretty(diff(f(x)));
%Problema 39
syms p;
f(x)=sqrt(2*p*x);
disp('Problema 39');
pretty(diff(f(x)));
%Problema 40
f(x)=(b/a)*(sqrt(a^2-x^2));
disp('Problema 40');
pretty(diff(f(x)));
diary off;
fclose(results);