%%
% Gráficar el valor absoluto de la función sen(x+1) para valores de x entre
% 2 y 4 

% Creamos un vector para almacenar los valores entre 2 y 4
x = linspace(2,4,50);
% calculamos el valor absoluto usando la función abs
y = abs(sin(x+1));
% Creamos la gráfica para mostrar el resultado
plot (x,y,'-o');

%% IN
% Graficar f(x) = sen(2x) y su derivada en la misma gráfica de -π a +π.
% Debe tener el titulo: Gráfica de una función y su derivada. Debe tener
% una leyenda
x = linspace(0,2*pi,50);
x2 = linspace(pi,-pi);

y = sin(2*x);
y2 = sin(2*x2);

plot(x,y,'gp-',x2,y2,'m*-')
title('Gráfica de una función y su derivada')

legend('f(x)=sen(2x)','-pi a +pi')

%%
% Un objeto se mueve sobre un círculo de radio 1. Grafique ese círculo y
% coloque un punto a un ángulo de 67°
r = 1;
xc = 0;
yc = 0;
grado = 67;
x2 = 0.63;

theta = linspace(0,2*pi);
x = r*cos(theta) + xc;
y = r*sin(theta) + yc;
punto = grado * (pi/270);

plot(x,y,xc,yc,'o',x2,punto,'*')
title('Gráfica circunferencia')
axis equal

%% 
% Realice una gráfica con cuatro subgráficas. En ellas se desea graficar 
% la función f(x) = ax^2 + bx + c. En la primera gráfica use a = 2, b = 3
% c = 4.Para la segunde use a = 2, b = 2, c = 4. En la tercera use a = 2
% b = 0, c = 4. En la cuarta use a = 2, b = -2, c = 4.
x = -3:0.01:3;
a = 2;
b = 3;
c = 4;

y = (a*(x.^2)) + (b*x) + c;
y2 = (a*(x.^2)) + (2*x) + c;
y3 = (a*(x.^2)) + (0*x) + c;
y4 = (a*(x.^2)) + (-2*x) + c;

subplot(2,2,1)
plot(x,y)
title('Primera')
grid on
subplot(2,2,2)
plot(x,y2)
title('Segunda')
grid on
subplot(2,2,3)
plot(x,y3)
title('Tercera')
grid on
subplot(2,2,4)
plot(x,y4)
title('Cuarta')
grid on


%% 
% Realice la gráfica polar de r = 1 + 2sen(6θ)
theta = 0:pi/100:2*pi;
r = 1 + 2*sin(6*theta)
polar(theta,r)
title('Gráfica Polar')

%% 
% Realizar una gráfica de histograma de una distribución de Rayleigh con 
% b = 1. La función que realiza esto es raylrnd(b,m,n), m y n son las 
% dimensiones de una matriz. Use 30000 puntos. Una manera de generar esto
% es
% b = 1;
% p = raylrnd(1,30000,1);
% xx = 0:0.1:4;
% yy = histogram(p,xx);
% yy = yy/(30000*0.1);
% bar(xx,yy)
% y = raylpdf(xx,1);
% line(xx,y)
N = 30000;
% Variables ramdom
U = rand(N,1); 
% Variable aleatoria de Rayleigh utilizando un muestreo de transformación
% inversa
sigma =1; 
x1 = sigma*sqrt(-2*log(1-U)); 
histogram(x1,'Normalization','pdf'); 
% Ecuación teórica
x = 0:0.1:4;
pdf = x/sigma^2.*exp((-x.^2)/(2*sigma^2)); 
% Plot 
hold on 
plot(x,pdf,'r') 
title('Gráfica de una distribución de Rayleigh')





%%
% Los primeros 5 términos del desarrollo en serie de Fourier para la
% función y = x(x-π)(x-2π), donde x ∈ (0,2π) están dados por 

x = 0:0.01:2*pi;
y = 12*sin(x)+(3*sin(2*x)/2)+(4*sin(3*x)/9)+(3*sin(4*x)/16)+(3*sin(5*x)/125);
y2 = x.*(x-pi).*(x-2.*pi);
z = zeros(size(x));
subplot(2,1,1)
plot(x,y,'g-')
hold on
plot(x,z,'r-')
grid on
title('Gráfica de una serie de Fourier Aproximación')
subplot(2,1,2)
x=@(t) 5*sin(2*pi*0.1*t); 
fplot(x,[0,25])
hold on
grid on
title('Gráfica de una serie de Fourier Original')


%%



%%
% La función de Rosenbrock es f(x,y) = 100(y-x^2)^2 + (1-x)^2 Obtener una
% gráfica de mesh y una de contorno tridimensional

x = 0:0.01:5;
y = 0:0.01:5;
[x,y] = meshgrid(x,y);
z = 100*(y-x.^2).^2 + (1-x).^2;

subplot(2,2,1)
plot3(x,y,z)
title('Contorno tridimensional')
subplot(2,2,2)
mesh(x,y,z)
title('Mesh')


%% 
% Obtener una gráfica de mesh y una de surf para la función
% f(x,y) = (x^2 - 2x)^2 exp(-x^2-y^2-xy)
x = -6:0.5:6;
y = -8:0.5:8;

[x,y] = meshgrid(x,y);

z = ((x.^2 - 2.*x.^2).*(exp(-x.^2)-y.^2.*exp(-x).*y));
subplot(2,2,1)
mesh(z)
title('Mesh')
subplot(2,2,2)
surf(z)
title('Surf')

%% 
% Para la función del problema anterior obtenga las gráficas de waterfall y
% de falso color.
x = -6:0.5:6;
y = -8:0.5:8

[x,y] = meshgrid(x,y)

z = ((x.^2 - 2.*x.^2).*(exp(-x.^2)-y.^2.*exp(-x).*y))
subplot(2,2,1)
waterfall(z)
title('Waterfall')
subplot(2,2,2)
bar3(z)
colorbar
title('Bar')



