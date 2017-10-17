results=fopen('results','w');
diary results;
diary on;
%pkg load symbolic;

syms f(x) x;

f(x)=3*x^4-2*x^2+8;
pretty(diff(x));

f(x)=4+3*x-2*x^3;
pretty(diff(f(x)));

syms f(t) t a b;
f(t)=a*t^5-5*b*t^3;
pretty(diff(f(t)));

syms f(z) z;
f(z)=(z^2/2-z^7/7);
pretty(diff(f(z)));

syms v f(v);
f(v)=sqrt(v);
pretty(diff(f(v)));

f(x)=(2*1/x-3*1/x^2);
pretty(diff(f(x)));

f(t)=2*t^(4/3)+3*t^(2/3);
pretty(diff(f(t)));

f(x)=2*x^(3/4)+4*x^(-1/4);
pretty(diff(f(x)));

f(x)=x^(2/3)-a^(2/3);
pretty(diff(f(x)));

syms b c;
f(x)=((a+b*x+c*x^2)/x);
pretty(simplify(diff(f(x))));

f(x)=sqrt(x)/2-2/sqrt(x);
pretty(diff(f(x)));

f(t)=(a+b*t+c*t^2)/sqrt(t);
pretty(diff(f(t)));

f(x)=sqrt(a*x)+a/sqrt(a*x);
pretty(diff(f(x)));

fprintf('?=x\n')
f(x)=sqrt(1-2*x);
pretty(diff(f(x)));

f(t)=(2-3*t^2)^3;
pretty(diff(f(t)));

f(x)=(4-9*x)^(1/3);3
pretty(diff(f(x)));

f(x)=1/sqrt(a^2-x^2);
pretty(diff(f(x)));

fprintf('?=x\n')
f(x)=(2-5*x)^(3/5);
pretty(diff(f(x)));

f(x)=(a-b/x)^2;
pretty(simplify(diff(f(x))));
diary off;
fclose(results);
