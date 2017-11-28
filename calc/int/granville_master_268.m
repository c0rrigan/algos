results = fopen('results','w');
diary results;
diary on;

syms f(t) t f(x) x f(u) u f(y) y f(v) v;
%Problema 1
f(x)=(x^2+2)^(3/2);
disp('Problema 1');
pretty(int(f(x),x));
%Problema 2
f(x)=x^2/sqrt(x^2-6);
disp('Problema 2');
pretty(int(f(x),x));
%Problema 3
f(x)=1/(5-x^2)^(3/2);
disp('Problema 3');
pretty(int(f(x),x));
%Problema 4
f(t)=t^2/sqrt(4-t^2);
disp('Problema 4');
pretty(int(f(t),t));
%Problema 5
f(x)=x^2/(x^2+8)^(3/2);
disp('Problema 5');
pretty(int(f(x),x));
%Problema 6
f(x)=u^2/(9-u^2)^(3/2);
disp('Problema 6');
pretty(int(f(x),x));
%Problema 7
f(x)=1/(x*sqrt(x^2+4));
disp('Problema 7');
pretty(int(f(x),x));
%Problema 8
f(x)=1/(x*sqrt(-x^2+25));
disp('Problema 8');
pretty(int(f(x),x));
Problema 9
f(y)=1/(y^2*sqrt(y^2-7));
disp('Problema 9');
pretty(int(f(x),x));
%Problema 10
f(x)=1/(x^2*sqrt(5-x*x));
disp('Problema 10');
pretty(int(f(x),x));
%Problema 11
f(x)=1/(x^3*sqrt(x*x-9));
disp('Problema 11');
pretty(int(f(x),x));
%Problema 12
f(t)=sqrt(16-t^2)/t^2;
disp('Problema 12');
pretty(int(f(t),t));
%Problema 13
f(x)=sqrt(x*x+16)/x;
disp('Problema 13');
pretty(int(f(x),x));
%Problema 14
f(y)=sqrt(y*y-9)/y;
disp('Problema 14');
pretty(int(f(x),x));
%Problema 15
f(x)=1/(x^3*sqrt(4-x*x));
disp('Problema 15');
pretty(int(f(x),x));
%Problema 16
f(x)=sqrt(x*x+9)/x^2;
disp('Problema 16');
pretty(int(f(x),x));
%Problema 17
f(u)=sqrt(100-u*u)/u;
disp('Problema 17');
pretty(int(f(u),u));
%Problema 18
f(x)=1/(x^3*sqrt(x*x+1));
disp('Problema 18');
pretty(int(f(x),x));
%Problema 19
f(v)=1/(v*v-3)^(3/2);
disp('Problema 19');
pretty(int(f(v),v));
%Problema 20
f(x)=x^2/sqrt(x*x+5);
disp('Problema 20');
pretty(int(f(x),x));
%Problema 21
f(x)=1/(x^4*sqrt(x*x-5));
disp('Problema 21');
pretty(int(f(x),x));
%Problema 22
f(x)=sqrt(x*x+9)/x^6;
disp('Problema 22');
pretty(int(f(x),x));

diary off;
fclose(results);
