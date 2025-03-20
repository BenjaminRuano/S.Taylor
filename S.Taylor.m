
% para facilitar la escritura cambiar la distribucion del teclado de espanol a ingles
clc; clear; close all;

% Define the function f(x) and the derivatives
syms x; % symbolic variable
f = -0.5*x^2 - 0.3*x + 0.9;
f0 = subs(f, x, 0); % f(0)

% We define the value of h
h = 1;
xi = 0;
x_next = xi + h;

% Derivatives of the function in x=0
f1 = diff(f, x);
f2 = diff(f1, x);

% Evaluate the derivatives in x=0
f1_0 = subs(f1, x, 0);
f2_0 = subs(f2, x, 0);

% Taylor Series approximations up to order 4
T0 = f0;
T1 = T0 + f1_0*h;
T2 = T1 + (f2_0*h^2)/factorial(2);

% Actual function value at x=1
real_value = double(subs(f, x, x_next));

% Conversion of symbolic expressions to numeric values
T0 = double(T0);
T1 = double(T1);
T2 = double(T2);

% Display results
fprintf('Valor real de f(1): %.6f\n', real_value);
fprintf('Orden 0: %.6f, Error: %.6f\n', T0, abs(real_value - T0));
fprintf('Orden 1: %.6f, Error: %.6f\n', T1, abs(real_value - T1));
fprintf('Orden 2: %.6f, Error: %.6f\n', T2, abs(real_value - T2));

% end of process of fourier series.
fprintf('fin con comilla simple alt39')\

