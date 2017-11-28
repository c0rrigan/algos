diary results370;
diary on;

syms f(x) x f(a) a;
%Problema 1
disp('theta = x');
f(x)=1/(1+sin(x)+cos(x));
disp('Problema 1');
pretty(int(f(x),x));
%Problema 2
f(x)=1/(sin(x)+tan(x));
disp('Problema 2');
pretty(int(f(x),x));
%Problema 3
disp('phi = x');
f(x)=1/(5+4*cos(x));
disp('Problema 3');
pretty(int(f(x),x));
%Problema 4
f(x)=1/(4+5*cos(x));
disp('Problema 4');
pretty(int(f(x),x));
%Problema 5
f(a)=1/(3+cos(a));
disp('Problema 5');
pretty(int(f(x),x));
%Problema 6
f(x)=1/(2*sin(x)-cos(x)+3);
disp('Problema 6');
pretty(int(f(x),x));
%Problema 7
disp('theta = x');
f(x)=cos(x)/(5-3*cos(x));
disp('Problema 7');
pretty(int(f(x),x));
%Problema 8
f(x)=1/(4*sec(x)+5);
disp('Problema 8');
pretty(int(f(x),x));
fclose(file);