results=fopen('results','w');

pkg load symbolic;

syms f(x) x;

f(x)=3*x^4-2*x^2+8;
fprintf(results,"Problema 9\n %s\n",pretty(diff(f(x))));

f(x)=4+3*x-2*x^3;
fprintf(results,"Problema 10\n %s\n",pretty(diff(f(x))));

syms f(t) t a b;
f(t)=a*t^5-5*b*t^3;
fprintf(results,"Problema 11\n %s\n",pretty(diff(f(t))));

syms f(z) z;
f(z)=(z^2/2-z^7/7);
fprintf(results,"Problema 12\n %s\n",pretty(diff(f(z))));

syms v f(v);
f(v)=sqrt(v);
fprintf(results,"Problema 13\n %s\n",pretty(diff(f(v))));

f(x)=(2*1/x-3*1/x^2);
fprintf(results,"Problema 14\n %s\n",pretty(diff(f(x))));

f(t)=2*t^(4/3)+3*t^(2/3);
fprintf(results,"Problema 15\n %s\n",pretty(diff(f(t))));

f(x)=2*x^(3/4)+4*x^(-1/4);
fprintf(results,"Problema 16\n %s\n",pretty(diff(f(x))));

f(x)=x^(2/3)-a^(2/3);
fprintf(results,"Problema 17\n %s\n",pretty(diff(f(x))));

syms b c;
f(x)=((a+b*x+c*x^2)/x);
fprintf(results,"Problema 18\n %s\n",pretty(expand(diff(f(x)))));

f(x)=sqrt(x)/2-2/sqrt(x);
fprintf(results,"Problema 19\n %s\n",pretty(diff(f(x))));

f(t)=(a+b*t+c*t^2)/sqrt(t);
fprintf(results,"Problema 20\n %s\n",pretty(diff(f(t))));

f(x)=sqrt(a*x)+a/sqrt(a*x);
fprintf(results,"Problema 21\n %s\n",pretty(diff(f(x))));

fprintf("θ=x\n")
f(x)=sqrt(1-2*x);
fprintf(results,"Problema 22\n %s\n",pretty(diff(f(x))));

f(t)=(2-3*t^2)^3;
fprintf(results,"Problema 23\n %s\n",pretty(diff(f(t))));

f(x)=(4-9*x)^(1/3);3
fprintf(results,"Problema 24\n %s\n",pretty(diff(f(x))));

f(x)=1/sqrt(a^2-x^2);
fprintf(results,"Problema 25\n %s\n",pretty(diff(f(x))));

fprintf("θ=x\n")
f(x)=(2-5*x)^(3/5);
fprintf(results,"Problema 26\n %s\n",pretty(diff(f(x))));

f(x)=(a-b/x)^2;
fprintf(results,"Problema 27\n %s\n",expand(pretty(diff(f(x)))));

fclose(results);