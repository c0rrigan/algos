results = fopen('results','w');
diary results;
diary on;
%Problema 38
syms f(x) x y;
f(x)=cos(x-y);
disp('Problema 38');
pretty(-diff(f(x),x)/diff(f(x),y));
%Problema 39
f(x)=exp(y)-sin(x+y);
disp('Problema 39');
pretty(-diff(f(x),x)/diff(f(x),y));
%Problema 40
f(x)=cos(y)-log(x+y);
disp('Problema 40');
pretty(-diff(f(x),x)/diff(f(x),y));
%Problema 41
f(x)=x-cos(x);
res = diff(f(x));
valor = subs(res,x,1);
disp('Problema 41,x=1');
disp(double(valor));
%Problema 42
f(x)=x*sin(x/2);
res = diff(f(x));
valor = subs(res,x,2);
disp('Problema 42,x=2');
disp(double(valor));
%Problema 43
f(x)=log(cos(x));
res = diff(f(x));
valor = subs(res,x,0.5);
disp('Problema 43,x=0.5');
disp(double(valor));
%Problema 44
f(x)=exp(x)/x;
res = diff(f(x));
valor = subs(res,x,-0.5);
disp('Problema 44,x=-0.5');
disp(double(valor));
%Problema 45
f(x)=sin(x)*cos(2*x);
res = diff(f(x));
valor = subs(res,x,1);
disp('Problema 45,x=1');
disp(double(valor));
%Problema 46
f(x)=log(sqrt(tan(x)));
res = diff(f(x));
valor = subs(res,x,1/4*pi);
disp('Problema 46,x=pi/4');
disp(double(valor));
%Problema 47
f(x)=exp(x)*sin(x);
res = diff(f(x));
valor = subs(res,x,2);
disp('Problema 47,x=2');
disp(double(valor));
%Problema 48
f(x)=10*exp(-x)*cos(pi*x);
res = diff(f(x));
valor = subs(res,x,1);
disp('Problema 48,x=1');
disp(double(valor));
%Problema 49
f(x)=5*exp(x/2)*sin(pi*x/2);
res = diff(f(x));
valor = subs(res,x,2);
disp('Problema 49,x=2');
disp(double(valor));
%Problema 50
f(x)=10*exp(-x/10)*sin(3*x);
res = diff(f(x));
valor = subs(res,x,1);
disp('Problema 50,x=1');
disp(double(valor));

diary off;
fclose(results); 