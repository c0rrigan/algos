results=fopen('results','w');
diary results;
diary on;

syms f(x) y a;
%Problema 12
f(x)=x^(2/3)+y^(2/3)-a^(2/3);
disp('Problema 12');
pretty(-diff(f(x),x)/diff(f(x),y));
%Problema 13
f(x)=x^3+3*y*x^2+y^3-a^3
disp('Problema 13');
pretty(-diff(f(x),x)/diff(f(x),y));
%Problema 14
f(x)=x+2*(x*y)^(1/2)+y-a
disp('Problema 14');
pretty(-diff(f(x),x)/diff(f(x),y));
%Problema 15
f(x)=x^2+a*(x*y)^(1/2)+y^2-b^2;
disp('Problema 15');
pretty(-diff(f(x),x)/diff(f(x),y));
%Problema 16
f(x)=x^4+4*y*x^3+y^4-20;
disp('Problema 16');
pretty(simplify(-diff(f(x),x)/diff(f(x),y)));
%Problema 17
syms c;
f(x)=a*x^3-3*x*y*b^2+c*y^3-1;
disp('Problema 17');
pretty(simplify(-diff(f(x),x)/diff(f(x),y)));
%Problema 18
f(x)=(y/x)^(1/2)+(x/y)^(1/2)-6;
disp('Problema 18');
pretty(simplify(-diff(f(x),x)/diff(f(x),y)));

diary off;
fclose(results);