results = fopen('results','w');
diary results;
diary on;
%Problema 4
syms f(x) x a;
f(x)=acos(x/a);
disp('Problema 4');
pretty(diff(f(x)));
%Problema 5
f(x)=asec(x/a);
disp('Problema 5');
pretty(diff(f(x)));
%Problema 6
f(x)=acot(x/a);
disp('Problema 6');
pretty(diff(f(x)));
%Problema 7
f(x)=asec(1/x);
disp('Problema 7');
pretty(diff(f(x)));
%Problema 8
f(x)=acsc(2*x);
disp('Problema 8');
pretty(diff(f(x)));
%Problema 9
f(x)=asin(sqrt(x));
disp('Problema 9');
pretty(diff(f(x)));
%Problema 10
%funcion verseno no disponible
%Problema 11
f(x)=x*asin(2*x);
disp('Problema 11');
pretty(diff(f(x)));
%Problema 12
f(x)=x*x*acos(x);
disp('Problema 12');
pretty(diff(f(x)));
%Problema 13
syms f(u) u;
f(u)=u*sqrt(a^2-u^2)+a^2*asin(u/a);
disp('Problema 13');
pretty(diff(f(u)));
%Problema 14
f(x)=sqrt(a^2-x^2)+a*asin(x/a);
disp('Problema 14');
pretty(simplify(diff(f(x))));
%Problema 15
syms f(u) u;
f(u)=a^2*asin(u/a)-u*sqrt(a^2-u^2);
disp('Problema 15');
pretty(simplify(diff(f(u))));
%Problema 16
f(u)=u/(sqrt(a^2-u^2))-asin(u/a);
disp('Problema 16');
pretty(simplify(diff(f(u))));
%Problema 17
f(u)=asin(u/a)+(sqrt(a^2-u^2)/u);
disp('Problema 17');
pretty(simplify(diff(f(u))));
%Problema 18
f(v)=a*asin(1-u/a)+sqrt(2*a*u+u^2);
disp('Problema 18');
pretty(simplify(diff(f(u))))


diary off;
fclose(results); 