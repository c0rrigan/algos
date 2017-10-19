results=fopen('results','w');
diary results;
diary on;

syms f(x) x;

%Problema 59
f(x)=x*x*sqrt(1+x^3);
%Problema 60
f(x)=(4-x^2)^3;
%Problema 61
f(x)=(x^2+2)/(2-x^2);
%Problema 62
f(x)=sqrt(5-2*x)/(2x+1);
%Problema 63
f(x)=x*sqrt(3+2*x);
%Problema 64
f(x)=sqrt((4*x+1)/(5*x-1));
%Problema 65
f(x)=sqrt((x^2-5)/(10-x^2));

diary off;
fclose(results);