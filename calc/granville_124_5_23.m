results = fopen('resuts','w');
diary results;
diary on;

syms f(x) x a;
%Problema 5
f(x)=sin(a*x);
disp('Problema 5');
pretty(diff(f(x)));
%Problema 6
f(x)=3*cos(2*x);
disp('Problema 6');
pretty(diff(f(x)));
%Problema 7
syms f(t) t;
f(t)=tan(3*t);
disp('Problema 7');
pretty(diff(f(t)));
%Problema 8
syms f(v) v;
f(v)=2*cot(v/2);
disp('Problema 8');
pretty(diff(f(v)));
%Problema 9
f(x)=sec(4*x);
disp('Problema 9');
pretty(diff(f(x)));
%Problema 10
syms b;
f(x)=a*csc(b*x)
disp('Problema 10');
disp('theta = x');
pretty(diff(f(x)));
%Problema 11
f(x)=1/2*(sin(x))^2;
disp('Problema 11');
pretty(diff(f(x)));
%Problema 12
f(t)=sqrt(cos(2*t));
disp('Problema 12');
pretty(diff(f(t)));
%Problema 13
f(x)=(tan(3*x))^(1/3);
disp('Problema 13');
disp('theta = x');
pretty(diff(f(x)));
%Problema 14
f(x)=4/(sqrt(sec(x));
disp('Problema 14');
pretty(diff(f(x)));
%Problema 15
f(x)=x*cos(x);
disp('Problema 15');
pretty(diff(f(x)));
%Problema 16
f(x)=tan(x)-x;
disp('Problema 16');
disp('theta=x');
pretty(diff(f(x)));
%Problema 17
f(x)=sin(x)/x;
disp('Problema 17');
disp('theta = x');
pretty(diff(f(x)));
%Problema 18
f(x)=sin(2*x)*cos(x);
disp('Problema 18');
pretty(diff(f(x)));
%Problema 19
f(x)=log(sin(a*x));
disp('Problema 19');
pretty(diff(f(x)));
%Problema 20
f(x)=log(sqrt(cos(2*x)));
disp('Problema 20');
pretty(diff(f(x)));
%Problema 21
f(x)=exp(a*x)*sin(b*X);
disp('Problema 21');
pretty(diff(f(x)));
%Problema 22
f(t)=exp(-t)*cos(2*t);
disp('Problema 22');
pretty(diff(f(x)));
%Problema 23
f(x)=log(tan(x/2));
disp('Problema 23');
pretty(diff(f(x)));

diary off;
fclose(results);