pkg load symbolic;
diary results;

diary on;

syms f(x) x a b;
%Problema 28
f(x)=(a+b/x^2)^3;
diff(f(x));
%Problema 29
f(x)=x*(a+b*x)^1/2;
pretty(diff(f(x)));

syms f(t) t;
%Problema 30
f(t)=t*(a^2+t^2)^2;
diff(f(t));
%Problema 31
f(x)=(a-x)/(a+x);
diff(f(x));
%Problema 32
f(x)=(a^2+x^2)/(a^2-x^2)
diff(f(x));
%Problema 33
f(x)=((a*a+x*x)^(1/2));
diff(f(x));
%Problema 34
f(x)=x/(a*a+x*x)^1/2
diff(f(x));
%Problema 35
f(x)=x^2*(3-4*x)^(1/2);
diff(f(x));
%Problema 36
syms c;
f(x)=((1-c*x)/(1+x*c));
diff(f(x));