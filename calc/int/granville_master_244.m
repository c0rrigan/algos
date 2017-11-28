diary results241;
diary on;
syms f(x) x m b a f(v) v f(y) y f(s) s f(t) t;
%Problema 1
f(x)=cos(m*x);
disp('Problema 1');
pretty(int(f(x),x));
%Problema 2
f(x)=tan(b*x);
disp('Problema 2');
pretty(int(f(x),x));
%Problema 3
f(x)=sec(a*x);
disp('Problema 3');
pretty(int(f(x),x));
%Problema 4
f(v)=csc(v)
disp('Problema 4');
pretty(int(f(v),v));
%Problema 5
f(t)=sec(3*t)*tan(3*t);
disp('Problema 5');
pretty(int(f(t),t));
%Problema 6
f(y)=csc(a*y)*cot(a*y);
disp('Problema 6');
pretty(int(f(x),x));
%Problema 7
f(x)=csc(3*x)^2;
disp('Problema 7');
pretty(int(f(x),x));
%Problema 8
f(x)=cot(x/2);
disp('Problema 8');
pretty(int(f(x),x));
%Problema 9
f(x)=x*x*sec(x^3)^2;
disp('Problema 9');
pretty(int(f(x),x));
%Problema 10
f(x)=1/sin(x)^2;
disp('Problema 10');
pretty(int(f(x),x));
%Problema 11
f(s)=1/cos(s)^2;
disp('Problema 11');
pretty(int(f(s),s));
%Problema 12
disp('theta = x');
f(x)=(tan(x)+cot(x))^2;
disp('Problema 12');
pretty(int(f(x),x));
%Problema 13
disp('phi = x');
f(x)=(sec(x)-tan(x))^2;
disp('Problema 13');
pretty(int(f(x),x));
%Problema 14
f(x)=1/(1+cos(x));
disp('Problema 14');
pretty(int(f(x),x));
%Problema 15
f(x)=1/(1+sin(x));
disp('Problema 15');
pretty(int(f(x),x));
%Problema 16
f(s)=sin(x)/(1+cos(s));
disp('Problema 16');
pretty(int(f(s),s));
%Problema 17
f(x)=sec(x)^2/(1+tan(x));
disp('Problema 17');
pretty(int(f(x),x));
%Problema 18
f(x)=x*cos(x^2);
disp('Problema 18');
pretty(int(f(x),x));
%Problema 19
f(x)=x+sin(2*x);
disp('Problema 19');
pretty(int(f(x),x));
%Problema 20
f(x)=sin(x)/sqrt(4-cos(x));
disp('Problema 20');
pretty(int(f(x),x));
%Problema 21
f(x)=(1+cos(x))/(x+sin(x));
disp('Problema 21');
pretty(int(f(x),x));
%Problema 22
disp('theta = x');
f(x)=sec(x)^2/sqrt(1+2*tan(x));
disp('Problema 22');
pretty(int(f(x),x));
%Problema 23
f(x)=sin(2*x/3);
disp('Problema 23');
pretty(int(f(x),x));
%Problema 24
f(x)=cos(b+a*x);
disp('Problema 24');
pretty(int(f(x),x));
%Problema 25
f(x)=csc(a-b*x)^2;
disp('Problema 25');
pretty(int(f(x),x));
%Problema 26
disp('theta = x');
f(x)=sec(x/2)*tan(x/2);
disp('Problema 26');
pretty(int(f(x),x));
%Problema 27
disp('phi = x');
f(x)=csc(a*x/b)*cot(a*x/b);
disp('Problema 27');
pretty(int(f(x),x));
%Problema 28
f(x)=exp(x)*cot(exp(x));
disp('Problema 28');
pretty(int(f(x),x));
%Problema 29
f(x)=sec(2*a*x)^2;
disp('Problema 29');
pretty(int(f(x),x));
%Problema 30
f(x)=tan(x/3);
disp('Problema 30');
pretty(int(f(x),x));
%Problema 31
f(t)=1/tan(5*t);
disp('Problema 31');
pretty(int(f(t),t));
%Problema 32
disp('theta = x');
f(x)=1/sin(4*x)^2;
disp('Problema 32');
pretty(int(f(x),x));
%Problema 33
f(y)=1/cot(7*y);
disp('Problema 33');
pretty(int(f(y),y));
%Problema 34
f(x)=sin(sqrt(x))/sqrt(x);
disp('Problema 34');
pretty(int(f(x),x));
%Problema 35
f(t)=1/sin(3*t)^2;
disp('Problema 35');
pretty(int(f(t),t));
%Problema 36
disp('phi = x');
f(x)=1/cos(4*x);
disp('Problema 36');
pretty(int(f(x),x));
%Problema 37
f(x)=a/cos(b*x)^2;
disp('Problema 37');
pretty(int(f(x),x));
%Problema 38
disp('theta = x');
f(x)=sec(2*x)-csc(x/2);
disp('Problema 38');
pretty(int(f(x),x));
%Problema 39
disp('phi = x');
f(x)=(tan(x)-sec(x))^2;
disp('Problema 39');
pretty(int(f(x),x));
%Problema 40
f(s)=tan(4*s)-cot(s/4);
disp('Problema 40');
pretty(int(f(s),s));
%Problema 41
f(x)=(cot(x)-1)^2;
disp('Problema 41');
pretty(int(f(x),x));
%Problema 42
f(t)=(sec(t)-1)^2;
disp('Problema 42');
pretty(int(f(t),t));
%Problema 43
f(y)=(1-csc(y))^2;
disp('Problema 43');
pretty(int(f(y),y));
%Problema 44
f(x)=1/(1-cos(x));
disp('Problema 44');
pretty(int(f(x),x));
%Problema 45
f(x)=1/(1-sin(x));
disp('Problema 45');
pretty(int(f(x),x));
%Problema 46
f(x)=sin(2*x)/(3+cos(2*x));
disp('Problema 46');
pretty(int(f(x),x));
%Problema 47
f(t)=cos(t)/sqrt(a+b*sin(t));
disp('Problema 47');
pretty(int(f(t),t));
%Problema 48
disp('theta = x');
f(x)=(csc(x)*cot(x))/(5-4*csc(x));
disp('Problema 48');
pretty(int(f(x),x));
%Problema 49
f(x)=csc(x)^2/sqrt(3-cot(x));
disp('Problema 49');
pretty(int(f(x),x));
%Problema 50
f(x)=sqrt(5+2*tan(x))/cos(x)^2;
disp('Problema 50');
pretty(int(f(x),x));
diary off;
fclose(results);
