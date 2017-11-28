diary results251;
diary on;
syms f(x) x f(y) y f(u) u f(t) t f(z) z f(v) v f(r) r f(w) w;
%Problema 18
f(x)=1/(x^2+2*x+10);
disp('Problema 18');
pretty(int(f(x),x));
%Problema 19
f(x)=1/(x^2+2*x-3);
disp('Problema 19');
pretty(int(f(x),x));
%Problema 20
f(y)=1/(3-2*y-y^2);
disp('Problema 20');
pretty(int(f(y),y));
%Problema 21
f(u)=3/sqrt(5-4*u-u^2);
disp('Problema 21');
pretty(int(f(u),u));
%Problema 22
f(x)=5/sqrt(x^2+2*x+5);
disp('Problema 22');
pretty(int(f(x),x));
%Problema 23
f(x)=1/sqrt(x^2+4*x+3);
disp('Problema 23');
pretty(int(f(x),x));
%Problema 24
f(x)=1/sqrt(x^2+2*x);
disp('Problema 24');
pretty(int(f(x),x));
%Problema 25
f(t)=1/sqrt(3*t-2*t^2);
disp('Problema 25');
pretty(int(f(t),t));
%Problema 26
f(x)=1/(x^2-4*x+5);
disp('Problema 26');
pretty(int(f(x),x));
%Problema 27
f(x)=1/(2+2*x-x^2);
disp('Problema 27');
pretty(int(f(x),x));
%Problema 28
f(x)=1/(r^2-2*r-3);
disp('Problema 28');
pretty(int(f(x),x));
%Problema 29
f(x)=1/sqrt(x^2-4*x+13);
disp('Problema 29');
pretty(int(f(x),x));
%Problema 30
f(z)=1/sqrt(3+2*z-z^2);
disp('Problema 30');
pretty(int(f(z),z));
%Problema 31
f(v)=1/sqrt(v^2-8*v+15);
disp('Problema 31');
pretty(int(f(v),v));
%Problema 32
f(t)=x/(x^4-x^2-1);
disp('Problema 32');
pretty(int(f(t),t));
%Problema 33
f(t)=1/sqrt(1-t-2*t^2);
disp('Problema 33');
pretty(int(f(t),t));
%Problema 34
f(x)=1/(3*x^2+4*x+1);
disp('Problema 34');
pretty(int(f(x),x));
%Problema 35
f(w)=1/(2*w^2+2*w+1);
disp('Problema 35');
pretty(int(f(w),w));
%Problema 36
f(x)=x^2/(9*x^6-3*x^3-1);
disp('Problema 36');
pretty(int(f(x),x));
%Problema 37
f(t)=1/(15+4*t-t^2);
disp('Problema 37');
pretty(int(f(t),t));
%Problema 38
f(x)=1/sqrt(9*x^2+12*x+8);
disp('Problema 38');
pretty(int(f(x),x));
%Problema 39
f(x)=1/sqrt(4*x^2-12*x+7);
disp('Problema 39');
pretty(int(f(x),x));
diary off;
fclose(results);
