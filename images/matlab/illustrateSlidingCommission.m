%%%%% produce figure to illustrate step function character of commission rate
%%%%% for Sliding scale commission strategy


x = [0:0.01:2];
index1 = find(x==0.4);
index2 = find(x==0.50);
index3 = find(x==0.60);

y1 = 0.3*ones(length(x(1:index1)));
y2 = 0.2*ones(length(x(index1:index2)));
y3 = 0.1*ones(length(x(index2:index3)));
y4 = 0.05*ones(length(x(index3:end)));


aS = 7;   %Achsen-stärke    
lS = 5;   %Linien-stärke
fS = 30;  %fontsize   
    
figure(1); clf;
plot(x(1:index1),y1,'b','LineWidth',5); hold on; 
plot(x(index1:index2),y2,'b','LineWidth',5); hold on;
plot(x(index2:index3),y3,'b','LineWidth',5); hold on;
plot(x(index3:end),y4,'b','LineWidth',5); hold on; 
plot(0,0.3,'o','LineWidth',5); hold on;
plot(x(index1),0.3,'x','LineWidth',5); hold on;
plot(x(index1),0.2,'o','LineWidth',5); hold on;
plot(x(index2),0.2,'x','LineWidth',5); hold on;
plot(x(index2),0.1,'o','LineWidth',5); hold on;
plot(x(index3),0.1,'x','LineWidth',5); hold on;
plot(x(index3),0.05,'o','LineWidth',5); hold on;
axis([0,1.1,0,0.4]);
xlabel('loss ratio','FontSize',30);
ylabel('commission ratio','FontSize',30);
titletext = sprintf('Initial provision 0.3 and jump discontinuities \{(0.4,0.2),(0.5,0.1),(0.6,0.05)\}','FontSize',fS);
%title(titletext)
set(gca,'FontSize',fS); set(gca,'LineWidth',aS); set(get(gca,'title'),'FontSize',fS);  
set(get(gca,'xlabel'),'FontSize',fS); set(get(gca,'ylabel'),'FontSize',fS); 
      
