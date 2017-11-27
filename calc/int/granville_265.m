results = fopen('results','w');
diary results;
diary on;

syms f(x) x f(a) a;
%Problema 1
f(x)=sin(x)^2;
disp("Problema 1");
pretty(int(f(x),x));
%Problema 2
f(x)=sin(x)^4;
disp("Problema 1");
pretty(int(f(x),x));
%Problema 3
f(x)=cos(x)^4;
disp("Problema 1");
pretty(int(f(x),x));
%Problema 4
f(x)=sin(x)^6;
disp("Problema 1");
pretty(int(f(x),x));
%Problema 5
f(x)=cos(x)^6;
disp("Problema 1");
pretty(int(f(x),x));
%Problema 6
f(x)=sin(a*x)^2;
disp("Problema 1");
pretty(int(f(x),x));
%Problema 7
f(x)=sin(x/2)^2*cos(x/2)^2;
disp("Problema 1");
pretty(int(f(x),x));
%Problema 8
f(x)=sin(a*x)^4;
disp("Problema 1");
pretty(int(f(x),x));
%Problema 9
f(x)=sin(2*x)^2*cos(2*x)^4;
disp("Problema 1");
pretty(int(f(x),x));
%Problema 10
disp("theta = x");
f(x)=(2-sin(x))^2;
disp("Problema 1");
pretty(int(f(x),x));
%Problema 11
disp("phi = x");
f(x)=(sin(x)^2+cos(x))^2;
disp("Problema 1");
pretty(int(f(x),x));
%Problema 12
f(x)=sin(2*x)*cos(4*x);
disp("Problema 1");
pretty(int(f(x),x));
%Problema 13
f(x)=sin(3*x)*sin(2*x);
disp("Problema 1");
pretty(int(f(x),x));
%Problema 14
f(x)=cos(3*x)*cos(4*x);
disp("Problema 1");
pretty(int(f(x),x));
%Problema 15
f(x)=cos(a*x)^2;
disp("Problema 1");
pretty(int(f(x),x));
%Problema 16
f(x)=sin(a*x)^4;
disp("Problema 1");
pretty(int(f(x),x));
%Problema 17
f(x)=sin(a*x)^2*cos(a*x)^2;
disp("Problema 1");
pretty(int(f(x),x));
%Problema 18
disp("theta = x");
f(x)=sin(x/2)^4*cos(x/2)^2;
disp("Problema 1");
pretty(int(f(x),x));
%Problema 19
f(a)=sin(2*a)^4*cos(2*a)^4;
disp("Problema 1");
pretty(int(f(a),a));
%Problema 20
f(x)=sin(x)^2*cos(x)^6;
disp("Problema 1");
pretty(int(f(x),x));
%Problema 21
f(x)=(1+cos(x))^3;
disp("Problema 1");
pretty(int(f(x),x));
%Problema 22
disp("theta = x");
f(x)=(sqrt(sin(2*x))-cos(2*x))^2;
disp("Problema 1");
pretty(int(f(x),x));
%Problema 23
disp("theta = x");
f(x)=(sqrt(cos(x))-2*sin(x))^2;
disp("Problema 1");
pretty(int(f(x),x));
%Problema 24
f(x)=(sin(2*x)-sin(3*x))^2;
disp("Problema 1");
pretty(int(f(x),x));
%Problema 25
f(x)=(sin(x)+cos(2*x))^2;
disp("Problema 1");
pretty(int(f(x),x));
%Problema 26
f(x)=(cos(x)+2*cos(2*x))^2;
disp("Problema 1");
pretty(int(f(x),x));
diary off;
fclose(results);
