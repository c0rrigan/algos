diary results370;
diary on;

syms f(x) x;
%Problema 1
f(x)= x^4;
disp('Problema 1');
pretty(int(f(x),x));
%Problema 2
f(x)= x^(-2);
disp('Problema 2');
pretty(int(f(x),x));
%Problema 3
f(x)= x^(2/3);
disp('Problema 3');
pretty(int(f(x),x));
%Problema 4
f(x)= x^(-1/2);
disp('Problema 4');
pretty(int(f(x),x));
%Problema 5
f(x)= x^(-1/3);
disp('Problema 5');
pretty(int(f(x),x));
%Problema 6
syms a f(y) y;
f(y)= 3*a*y^2;
disp('Problema 6');
pretty(int(f(y),y));
%Problema 7
syms f(t) t;
f(t)= 2*t^(-2);
disp('Problema 7');
pretty(int(f(t),t));
%Problema 8
f(x)= sqrt(a*x);
disp('Problema 8');
pretty(int(f(x),x));
%Problema 9
f(x)= sqrt(2*x);
disp('Problema 9');
pretty(int(f(x),x));
%Problema 10
f(t)=(3*t)^(1/3);
disp('Problema 10');
pretty(int(f(t),t));
%Problema 11
f(x)= x^(3/2)-2*x^(2/3)+5*sqrt(x)-3;
disp('Problema 11');
pretty(int(f(x),x));
%Problema 12
f(x)= (4*x^2-2*sqrt(x))/x;
disp('Problema 12');
pretty(int(f(x),x));
%Problema 13
f(x)= (x^2/x)-(2/x^2);
disp('Problema 13');
pretty(int(f(x),x));
%Problema 14
f(x)= sqrt(x)*(3*x-2);
disp('Problema 14');
pretty(simplify(int(f(x),x)));
%Problema 15
f(x)= (x^3-6*x+5)/x;
disp('Problema 15');
pretty(int(f(x),x));
%Problema 16
syms b;
f(x)= sqrt(a+b*x);
disp('Problema 16');
pretty(int(f(x),x));
%Problema 17
f(y)=(a-b*y)^(-1/2);
disp('Problema 17');
pretty(int(f(y),y));
%Problema 18
f(t)=(a+b*t)^2;
disp('Problema 18');
pretty(simplify(int(f(t),t)));
%Problema 19
f(x)=x*(2+x^2)^2;
disp('Problema 19');
pretty(int(f(x),x));
%Problema 20
f(y)=y*(a-b*y^2);
disp('Problema 20');
pretty(int(f(y),y));
%Problema 21
f(t)=t*sqrt(2*t*t+3);
disp('Problema 21');
pretty(simplify(int(f(t),t)));
%Problema 22
f(x)=x*(2*x+1)^2;
disp('Problema 22');
pretty(int(f(x),x));
%Problema 23
f(x)= (4*x^2)/(sqrt(x^3+8));
disp('Problema 23');
pretty(int(f(x),x));
%Problema 24
syms f(z) z;
f(z)= (6*z)/(5-3*z^2)^2;
disp('Problema 24');
pretty(int(f(x),x));
%Problema 25
f(x)= (sqrt(a)-sqrt(x))^2;
disp('Problema 25');
pretty(int(f(x),x));
%Problema 26
f(x)= (sqrt(a)-sqrt(x))^2/sqrt(x);
disp('Problema 26');
pretty(int(f(x),x));
%Problema 27
f(x)= sqrt(x)*(sqrt(a)-sqrt(x))^2;
disp('Problema 27');
pretty(int(f(x),x));
%Problema 28
syms a;
f(t)= t^3/sqrt(a^4+t^4);
disp('Problema 28');
pretty(int(f(t),t));
%Problema 29
syms b;
f(y)= 1/(a+b*y)^3;
disp('Problema 29');
pretty(simplify(int(f(t),t)));
%Problema 30
f(x)=x/(a+b*x^2)^3;
disp('Problema 30');
pretty(simplify(int(f(x),x)));
%Problema 31
f(t)=t^2/(a+b*t^3)^2;
disp('Problema 31');
pretty(simplify(int(f(t),t)));
%Problema 32
syms z;
f(z)=z*(a+b*z^3)^2;
disp('Problema 32');
pretty(int(f(z),z));
%Problema 33
syms n;
f(x)=sqrt(a+b*x^n)*x^(n-1);
disp('Problema 33');
pretty(int(f(x),x));
%Problema 34
f(x)=(2*x+3)/sqrt(x^2+3*x);
disp('Problema 34');
pretty(int(f(x),x));
diary off;
%Problema 35
f(x)=(x^2+1)/sqrt(x^3+3*x);
disp('Problema 35');
pretty(int(f(x),x));
%Problema 36
f(x)=(2+log(x))/x;
disp('Problema 36');
pretty(int(f(x),x));
%Problema 37
f(x)=cos(x)*sin(x)^2;
disp('Problema 37');
pretty(int(f(x),x));
%Problema 38
f(x)=sin(a*x)*cos(a*x);
disp('Problema 38');
pretty(int(f(x),x));
%Problema 39
f(x)=sin(2*x)*cos(2*x)^2;
disp('Problema 39');
pretty(simplify(int(f(x),x)));
diary off;
%Problema 40
f(x)=tan(x/2)*sec(x/2)^2;
disp('Problema 40');
pretty(int(f(x),x));
%Problema 41
f(x)=cos(a*x)/sqrt(b+sin(a*x));
disp('Problema 41');
pretty(int(f(x),x));
%Problema 42
f(x)=(sec(x)/sqrt(1+tan(x)))^2;
disp('Problema 42');
pretty(simplify(int(f(x),x)));
%Problema 43
f(x)=1/(2+3*x);
disp('Problema 43');
pretty(int(f(x),x));
%Problema 44
f(x)=x^2/(2+x^3);
disp('Problema 44');
pretty(int(f(x),x));
%Problema 45
f(t)=t/(a+b*t^2);
disp('Problema 45');
pretty(int(f(t),t));
%Problema 46
f(x)=(2*x+3)/(x^2+3*x);
disp('Problema 46');
pretty(int(f(x),x));
%Problema 47
f(y)=(y+2)/(y^2+4*y);
disp('Problema 47');
pretty(int(f(y),y));
%Problema 48
disp('theta = x');
f(x)=exp(x)/(a+b*exp(x));
disp('Problema 48');
pretty(int(f(x),x));
%Problema 49
f(x)=sin(x)/(1-cos(x));
disp('Problema 49');
pretty(int(f(x),x));
%Problema 50
f(x)=sec(y)^2/(a+b*tan(y));
disp('Problema 50');
pretty(int(f(x),x));
diary off;
%Problema 51
f(x)=(2*x+3)/(x+2);
disp('Problema 51');
pretty(int(f(x),x));
diary off;
%Problema 52
f(x)=(x^2+2)/(x+1);
disp('Problema 52');
pretty(int(f(x),x));
%Problema 53
f(x)=(x+4)/(2*x+3);
disp('Problema 53');
pretty(int(f(x),x));
%Problema 54
syms s f(s);
f(s)=exp(2*s)/(exp(2*s)+1);
disp('Problema 54');
pretty(int(f(s),s));
%Problema 55
disp('theta = x');
f(x)=(a*exp(x)+b)/(a*exp(x)-b);
disp('Problema 55');
pretty(int(f(x),x));
%Problema 57
f(x)=(x^3+3*x^2);
disp('Problema 57');
pretty(int(f(x),x));
%Problema 58
f(x)=(x^2-4)/x^4;
disp('Problema 58');
pretty(int(f(x),x));
%Problema 59
f(x)=sqrt(5*x)/5+5/sqrt(5*x);
disp('Problema 59');
pretty(int(f(x),x));
%Problema 60
f(y)=(b*y^2)^(1/3);
disp('Problema 60');
pretty(int(f(y),y));
%Problema 61
f(t)=1/(t*sqrt(2*t));
disp('Problema 61');
pretty(int(f(t),t));
%Problema 62
f(x)=(2-3*x)^(1/3);
disp('Problema 62');
pretty(int(f(x),x));
diary off;
fclose(results);
