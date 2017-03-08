clear
close all

t = -20:.01:20;

hold on
grid on

x1 = 4 * myrect ((t-3)/10);
x2 = 3 * mytri ((t+1)/4);
x3 = mystep (-t + 2);

plot(t, x1, 'r', 'LineWidth',1.3)
plot(t, x2, 'b', 'LineWidth',1.3)
plot(t, x3, 'g', 'LineWidth',1.3)

figure
hold on
grid on

x4 = x1+2*x2+3*x3;
x5 = x1.*x2.*x3;

plot(t, x4, 'r', 'LineWidth',1.3);
plot(t, x5, 'b', 'LineWidth',1.3);

figure
hold on
grid on

x6 = sin(t);
x7 = cos(2*pi*t);
x8 = x6 .* x7;
x9 = x6 + x7;

plot(t, x6, 'r', 'LineWidth',3);
plot(t, x7, 'b', 'LineWidth',1);
plot(t, x8, 'g', 'LineWidth',2);
plot(t, x9, 'k', 'LineWidth',2);

figure
hold on
grid on

x10 = 2*mytri(t/2) .* myrect(t/2);
plot(t, x10, 'b', 'LineWidth',1.3);

x11 = -3 * cos(pi/2*t);
plot(t, x11, 'r', 'LineWidth',1.3);