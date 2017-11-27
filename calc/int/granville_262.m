
results = fopen('results','w');
diary results;
diary on;

syms f(x) x b f(a) a f(t) t n;
%Problema 1
f(x)=tan(x)^3;
disp("Problema 1");
pretty(int(f(x),x));
%Problema 2
f(x)=cot(x/3)^3;
disp("Problema 1");
pretty(int(f(x),x));
%Problema 3
f(x)=csc(2*x)*cot(2*x)^3;
disp("Problema 1");
pretty(int(f(x),x));
%Problema 4
f(x)=csc(x/4)^4;
disp("Problema 1");
pretty(int(f(x),x));
%Problema 5
disp("theta = x");
f(x)=tan(3*x)^3;
disp("Problema 1");
pretty(int(f(x),x));
%Problema 6
disp("phi = x");
f(x)=sin(x)^2/cos(x)^4;
disp("Problema 1");
pretty(int(f(x),x));
%Problema 7
f(x)=1/(sin(2*x)^2*cos(2*x)^4);
disp("Problema 1");
pretty(int(f(x),x));
%Problema 8
f(x)=cos(x)^4/sin(x)^6;
disp("Problema 1");
pretty(int(f(x),x));
%Problema 9
f(x)=sin(x)^(3/2)/cos(x)^(11/2);
disp("Problema 1");
pretty(int(f(x),x));
%Problema 10
f(a)=tan(a)^3*sec(a)^(5/2);
disp("Problema 1");
pretty(int(f(a),a));
%Problema 11
f(a)=(sec(a*x)/tan(a*x))^4;
disp("Problema 1");
pretty(int(f(a),a));
%Problema 12
disp("theta = x");
f(x)=cot(x)^2+cot(2*x)^4;
disp("Problema 1");
pretty(int(f(x),x));
%Problema 13
f(x)=tan(b*t)-cot(b*t);
disp("Problema 1");
pretty(int(f(x),x));
%Problema 14
f(x)=cot(a*x)^5;
disp("Problema 1");
pretty(int(f(x),x));
%Problema 15
disp("theta = x");
f(x)=sec(x)^6;
disp("Problema 1");
pretty(int(f(x),x));
%Problema 16
f(x)=csc(x/2)^6;
disp("Problema 1");
pretty(int(f(x),x));
%Problema 17
f(t)=sec(t)^4/tan(t)^3;
disp("Problema 1");
pretty(int(f(t),t));
%Problema 18
f(x)=sec(x)^4/sqrt(tan(x));
disp("Problema 1");
pretty(int(f(x),x));
%Problema 19
f(x)=(csc(a*x)/cot(a*x))^4;
disp("Problema 1");
pretty(int(f(x),x));
%Problema 20
f(x)=tan(x/3)^3*sec(x/3)^3;
disp("Problema 1");
pretty(int(f(x),x));
%Problema 21
f(x)=1/(sin(3*x)^4*cos(3*x)^3);
disp("Problema 1");
pretty(int(f(x),x));
%Problema 22
f(x)=(csc(b*x)/tan(b*x))^2;
disp("Problema 1");
pretty(int(f(x),x));
%Problema 23
disp("phi = x");
f(x)=(tan(x)/cot(x))^3;
disp("Problema 1");
pretty(int(f(x),x));
%Problema 24
f(t)=(tan(a*t)/cos(a*t)^4;
disp("Problema 1");
pretty(int(f(t),t));
%Problema 25
f(x)=tan(x)^3/sqrt(sec(x));
disp("Problema 1");
pretty(int(f(x),x));
%Problema 26
f(x)=tan(x)^n*sec(x)^4;
disp("Problema 1");
pretty(int(f(x),x));
%Problema 27
f(x)=tan(2*x)^5/sec(2*x)^3;
disp("Problema 1");
pretty(int(f(x),x));
diary off;
fclose(results);
