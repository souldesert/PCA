load iris.txt;
[P,inf,Q,L]=GK(iris,1,2);

disp(P);

plot(P(1:50,1),P(1:50,2),'or')
hold on;
plot(P(51:100,1),P(51:100,2),'xg')
hold on;

plot(P(101:150,1),P(101:150,2),'pb')