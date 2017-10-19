results=fopen('results','w');
diary results;
diary on;
%pkg load symbolic;

syms f(x) x;
%Problema 9
f(x)=3*x^4-2*x^2+8;
disp('Problema 9');
pretty(diff(f(x)));
%Problema 10
f(x)=4+3*x-2*x^3;
disp('Problema 10');
pretty(diff(f(x)));
%Problema 11
syms f(t) t a b;
f(t)=a*t^5-5*b*t^3;
disp('Problema 11');
pretty(diff(f(t)));
%Problema 12
syms f(z) z;
f(z)=(z^2/2-z^7/7);
disp('Problema 12');
pretty(diff(f(z)));
%Problema 13
syms v f(v);
f(v)=sqrt(v);
disp('Problema 13');
pretty(diff(f(v)));
%Problema 14
f(x)=(2*1/x-3*1/x^2);
disp('Problema 14');
pretty(diff(f(x)));
%Problema 15
f(t)=2*t^(4/3)+3*t^(2/3);
disp('Problema 15');
pretty(diff(f(t)));
%Problema 16
f(x)=2*x^(3/4)+4*x^(-1/4);
disp('Problema 16');
pretty(diff(f(x)));
%Problema 17
f(x)=x^(2/3)-a^(2/3);
disp('Problema 17');
pretty(diff(f(x)));
%Problema 18
syms b c;
f(x)=((a+b*x+c*x^2)/x);
disp('Problema 18');
pretty(simplify(diff(f(x))));
%Problema 19
f(x)=sqrt(x)/2-2/sqrt(x);
disp('Problema 19');
pretty(diff(f(x)));
%Problema 20
f(t)=(a+b*t+c*t^2)/sqrt(t);
disp('Problema 20');
pretty(diff(f(t)));
fclose(results);