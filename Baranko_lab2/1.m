
x=-5.12:0.001:5.12;
z=fun1(x);
plot(x,z)

x =  fminbnd(@fun1,-5.12,5.12)
y = fun1(x)