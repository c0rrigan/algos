results=fopen('results','w');
diary results;
diary on;

syms f(x) f(t) t x a b;

%Problema 33
f(x)=((a*a+x*x)^(1/2));
disp('Problema 33');
pretty(diff(f(x)));
%Problema 34
f(x)=x/(a*a+x*x)^1/2
disp('Problema 35');
diff(f(x));
%Problema 35
f(x)=x^2*(3-4*x)^(1/2);
diff(f(x));
%Problema 36
syms c;
f(x)=((1-c*x)/(1+x*c));
diff(f(x));


fclose(results);