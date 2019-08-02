%question 7-a
figure(1);
fplot(@(x) 1/(1+exp(-500*x-30)),[-1 1],'Linewidth',2,'color','r');
figure(2);
fplot(@(x) 1/(1+exp(-500*x+30)),[-1 1],'Linewidth',2,'color','g');
figure(3);
fplot(@(x) (1/(1+exp(-500*x-30))) - (1/(1+exp(-500*x+30))),[-1 1],'Linewidth',2,'color','b');

%question 7-b
[x1,x2] = meshgrid(-5:.5:5);
h11 = 1./(1 + exp(-x1-50.*x2-100));
h12 = 1./(1 + exp(-x1-50.*x2+100));
h13 = 1./(1 + exp(-50.*x1-x2-100));
h14 = 1./(1 + exp(-50.*x1-x2+100));
h21 = h11 - h12;
h22 = h13 - h14;
h31 = h21 + h22;
f = 1./(1 + exp(-100.*h31+200));
figure(4);
surf(x1,x2,h11);
figure(5);
surf(x1,x2,h12);
figure(6);
surf(x1,x2,h13);
figure(7);
surf(x1,x2,h14);
figure(8);
surf(x1,x2,h21);
figure(9);
surf(x1,x2,h22);
figure(10);
surf(x1,x2,h31);
figure(11);
surf(x1,x2,f);