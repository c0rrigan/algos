results = fopen('results','w');
diary results;
diary on;
%Problema 6
syms f(x) x;
f(x)=sqrt(5-3*x*x);
disp("Problema 1");
pretty(int(f(x),x));
%Problema 7
f(x)=sqrt(3-2*x-x*x);
disp("Problema 1");
pretty(int(f(x),x));
%Problema 8
f(x)=sqrt(5-2*x+x*x);
disp("Problema 1");
pretty(int(f(x),x));
%Problema 9
f(x)=sqrt(2*x-x*x);
disp("Problema 1");
pretty(int(f(x),x));
%Problema 10
f(x)=sqrt(10-4*x+4*x*x);
disp("Problema 1");
pretty(int(f(x),x));
%Problema 11
f(x)=sqrt(16-9*x*x);
disp("Problema 1");
pretty(int(f(x),x));
%Problema 12
f(x)=sqrt(4+25*x*x);
disp("Problema 1");
pretty(int(f(x),x));
%Problema 13
f(x)=sqrt(9*x*x-1);
disp("Problema 1");
pretty(int(f(x),x));
%Problema 14
f(x)=sqrt(8-3*x*x);
disp("Problema 1");
pretty(int(f(x),x));
%Problema 15
f(x)=sqrt(5+2*x*x);
disp("Problema 1");
pretty(int(f(x),x));
%Problema 16
f(x)=sqrt(5-4*x-x*x);
disp("Problema 1");
pretty(int(f(x),x));
%Problema 17
f(x)=sqrt(5+2*x+x*x);
disp("Problema 1");
pretty(int(f(x),x));
%Problema 18
f(x)=sqrt(x*x-8*x+7);
disp("Problema 1");
pretty(int(f(x),x));
%Problema 19
f(x)=sqrt(4-2*x-x*x);
disp("Problema 1");
pretty(int(f(x),x));
%Problema 20
f(x)=sqrt(x*x-2*x+8);
disp("Problema 1");
pretty(int(f(x),x));
diary off;
fclose(results);
