syms f(x) x;
%Problema 42
disp("Problema 42");
f(x)=(2*x)^(1/2)+(3*x)^(1/2);
pretty(diff(f(x)));
%Problema 43
disp("Problema 43");
f(x)=(2-x)/(1+2*x*x);
pretty(simplify(diff(f(x))));
%Problema 44
syms b a;
disp("Problema 44");
f(x)=x/(a-b*x)^(1/2);
pretty(diff(f(x)));
%Problema 45
syms t f(t);
disp("Problema 45");
f(t)=(a+b*t)^(1/2)/t;
pretty(diff(f(t),t));
%Problema 46
disp("Problema 46\n theta = x");
f(x)=(a+b*x)^(1/3)/x;
pretty(diff(f(x)));
%Problema 47
disp("Problema 47");
f(x)=x*x*(5-2*x)^(1/2);
pretty(diff(f(x)));
%Problema 48
disp("Problema 48");
f(x)=x*(x+3*x)^(1/3);
pretty(diff(f(x)));
%Problema 49
f(t)=((2*t*t*t-1)/(t*t))^(1/2);
pretty(simplify(diff(f(t),t)));
%Problema 50
f(x)=(x+2)^2*(x^2+2)^(1/2);
pretty(diff(f(x)));
%Problema 51
f(x)=(1+2*x)^(1/2)/(1+3*x)^(1/3)
pretty(diff(f(x)));