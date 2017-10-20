results = fopen('results','w');
diary results;
diary on;

%Problema 15
syms f(x) x;
f(x)=x*x*log(x*x);
disp('Problema 15');
pretty(diff(f(x)));
%Problema 16
syms n;
f(x)=exp(n*x);
disp('Problema 16');
pretty(diff(f(x)));
%Problema 17
f(x)=10^(n*x);
disp('Problema 17');
pretty(diff(f(x)));
%Problema 18
f(x)=exp(x^2);
disp('Problema 18');
pretty(diff(f(x)));
%Problema 19
f(x)=2/(exp(x));
disp('Problema 19');
pretty(diff(f(x)));
%Problema 20
syms f(t) t;
f(t)=exp(sqrt(t));
disp('Problema 20');
pretty(diff(f(t),t));
%Problema 21
syms b  f(y) y;
f(y)=b^(2*y);
disp('Problema 21');
pretty(diff(f(y),y));
%Problema 22
syms f(s) s;
f(s)=s*exp(s);
disp('Problema 22');
pretty(diff(f(s),s));
%Problema 23
syms u f(u);
f(u)=exp(u)/u;
disp('Problema 23');
pretty(diff(f(u),u));
%Problema 24
f(x)=log(x)/x;
disp('Problema 24');
pretty(diff(f(x)));
%Problema 25
f(x)=log(x*x*exp(x));
disp('Problema 25');
pretty(diff(f(x)));
%Problema 26
f(x)=(exp(x)-1)/(exp(x)+1);
disp('Problema 26');
pretty(diff(f(x)));
%Problema 27
f(x)=x*x*exp(-x);
disp('Problema 27');
pretty(simplify(diff(f(x))));
%Problema 28
f(x)=(a/2)*(exp(x/a)-exp(-x/a));
disp('Problema 28');
pretty(simplify(diff(f(x))));
diary off;
fclose(results);