results=fopen('results','w');
diary results;
diary on;

syms f(x) x;
%Problema 1
f(x)=(1+2*sqrt(x))^6;
disp('Problema 1');
pretty(diff(f(x)));
%Problema 2
f(x)=sqrt(2*(x^3-x));
disp('Problema 2');
pretty(diff(f(x)));
%Problema 3
f(x)=(a-((b-x)/(b+x)))/(a+((b-x)/(b+x)));
disp('Problema 3');
pretty(diff(f(x)));
%Problema 4
f(x)=(sqrt(1-x^2))*sqrt(a^2-(sqrt(1-x^2))^2);
disp('Problema 4');
pretty(diff(f(x)));
%Problema 5
syms y;
f(x)=15*y+5*y^3+3*y^5-15*x;
pretty(-diff(f(x),x)/diff(f(x),y));

fclose(results);