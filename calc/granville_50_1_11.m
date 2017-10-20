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
syms b u;
u=(b-x)/(b+x);
f(x)=(a-u)/(a+u);
disp('Problema 3');
pretty(simplify(diff(f(x))));
%Problema 4
syms a;
u=sqrt(1-x^2);
f(x)=u*sqrt(a^2-u^2);
disp('Problema 4');
pretty(diff(f(x)));
%Problema 5
syms y;
f(x)=15*y+5*y^3+3*y^5-15*x;
disp('Problema 5');
pretty(-diff(f(x),x)/diff(f(x),y));
%Problema 6
f(x)=sqrt(y)-y^(1/3)-x;
disp('Problema 6');
pretty(-diff(f(x),x)/diff(f(x),y));
%Problema 7
f(x)=sqrt(2*p*x)-y^2;
disp('Problema 7');
pretty(-diff(f(x),x)/diff(f(x),y));
%Problema 8;
syms r;
f(x)=x^2+y^2-r^2;
disp('Problema 8');
pretty(-diff(f(x),x)/diff(f(x),y));
%Problema 9
f(x)=b*b*x*x+a*a*y*y-a*a*b*b;
disp('Problema 9');
pretty(-diff(f(x),x)/diff(f(x),y));
%Problema 10
disp('Problema 10');
pretty(-diff(f(x),x)/diff(f(x),y));
%Problema 11
f(x)=x^3-3*a*x*y+y^3;
disp('Problema 11');
pretty(-diff(f(x),x)/diff(f(x),y));

diary off;
fclose(results);