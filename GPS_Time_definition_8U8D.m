clear;clc;close all

figure_handle=figure('Visible','off','Position',[0,0,1024,768]);
%--
movegui(figure_handle,'center')  
%--
% ³]©w­I´º
set(figure_handle,'color',[1,1,1])
set(figure_handle,'Visible','on')
%--
x_tick_in_ms=0:10000;
TP1_value=x_tick_in_ms*0;
TP2_value=x_tick_in_ms*0;
TP1_value(201:300)=NaN;
TP2_value(201:300)=NaN;

TP1_value(401:700)=0.5;
TP2_value(401:900)=0.5;
TP2_value(1401:1900)=0.5;
TP2_value(2401:2900)=0.5;
TP1_value(3401:3501)=NaN;
TP2_value(3401:3501)=NaN;




TP1_value(4801:5100)=0.5;
TP2_value(3801:4300)=0.5;
TP2_value(4801:5300)=0.5;
TP2_value(5801:6300)=0.5;
TP2_value(6801:7300)=0.5;
TP1_value(7801:7901)=NaN;
TP2_value(7801:7901)=NaN;

TP1_value(9101:9401)=0.5;
TP2_value(8101:8601)=0.5;
TP2_value(9101:9601)=0.5;


plot(x_tick_in_ms,TP1_value,'r')
hold on
plot(x_tick_in_ms,TP2_value-0.9,'b')
%--
text(-500,0,'TP1','Color','r')
text(-500,-0.9,'TP2','Color','b')
text(201,0,'//','Color','r')
text(201,-0.9,'//','Color','b')
text(360,0.58,'3[ms]','Color','r')
text(430,-0.33,'5[ms]','Color','b')
text(930,-1,'5[ms]','Color','b')
text(1430,-0.33,'5[ms]','Color','b')
text(1930,-1,'5[ms]','Color','b')
text(2430,-0.33,'5[ms]','Color','b')

text(3400,0,'//','Color','r')
text(3400,-0.9,'//','Color','b')
text(4760,0.58,'3[ms]','Color','r')
text(3830,-0.33,'5[ms]','Color','b')
text(4330,-1,'5[ms]','Color','b')
text(4830,-0.33,'5[ms]','Color','b')
text(5330,-1,'5[ms]','Color','b')
text(5830,-0.33,'5[ms]','Color','b')
text(6330,-1,'5[ms]','Color','b')
text(6830,-0.33,'5[ms]','Color','b')

text(7801,0,'//','Color','r')
text(7801,-0.9,'//','Color','b')
text(9060,0.58,'3[ms]','Color','r')
text(8130,-0.33,'5[ms]','Color','b')
text(8630,-1,'5[ms]','Color','b')
text(9130,-0.33,'5[ms]','Color','b')
text(451,-0.1,'1000[ms]','Color','m')
%--
one_second_plot_y=x_tick_in_ms*0;
one_second_plot_y(1:400)=NaN;
one_second_plot_y(4801:end)=NaN;
plot(x_tick_in_ms,one_second_plot_y-0.18,'m')
plot([401,401],[-0.18-0.03,-0.18+0.03],'m')
plot([4800,4800],[-0.18-0.03,-0.18+0.03],'m')

x_tick_plot_y=x_tick_in_ms*0;
x_tick_plot_y(201:300)=NaN;
text(201,-1.2,'//','Color','k')

x_tick_plot_y(3401:3501)=NaN;
text(3400,-1.2,'//','Color','k')
x_tick_plot_y(7801:7901)=NaN;
text(7801,-1.2,'//','Color','k')
plot(x_tick_in_ms,x_tick_plot_y-1.2,'k')
text(-800,-1.2,'Time Tick','Color','k')

plot([401,401],[-1.2-0.03,-1.2+0.03],'k')
plot([900,900],[-1.2-0.03,-1.2+0.03],'k')
plot([1401,1401],[-1.2-0.03,-1.2+0.03],'k')
plot([1900,1900],[-1.2-0.03,-1.2+0.03],'k')
plot([2401,2401],[-1.2-0.03,-1.2+0.03],'k')
plot([2900,2900],[-1.2-0.03,-1.2+0.03],'k')

plot([3801,3801],[-1.2-0.03,-1.2+0.03],'k')
plot([4301,4301],[-1.2-0.03,-1.2+0.03],'k')
plot([4801,4801],[-1.2-0.03,-1.2+0.03],'k')
plot([5301,5301],[-1.2-0.03,-1.2+0.03],'k')
plot([5801,5801],[-1.2-0.03,-1.2+0.03],'k')
plot([6301,6301],[-1.2-0.03,-1.2+0.03],'k')
plot([6801,6801],[-1.2-0.03,-1.2+0.03],'k')
plot([7301,7301],[-1.2-0.03,-1.2+0.03],'k')


plot([8101,8101],[-1.2-0.03,-1.2+0.03],'k')
plot([8601,8601],[-1.2-0.03,-1.2+0.03],'k')
plot([9101,9101],[-1.2-0.03,-1.2+0.03],'k')
plot([9601,9601],[-1.2-0.03,-1.2+0.03],'k')

text(401-240,-1.3,'-1000','Color','k')
text(901-160,-1.3,'-995','Color','k')
text(1401-160,-1.3,'-990','Color','k')
text(1901-160,-1.3,'-985','Color','k')
text(2401-160,-1.3,'-980','Color','k')
text(2901-160,-1.3,'-975','Color','k')

text(3801-120,-1.3,'-10','Color','k')
text(4301-80,-1.3,'-5','Color','k')
text(4801-40,-1.3,'0','Color','k')
text(5301-40,-1.3,'5','Color','k')
text(5801-80,-1.3,'10','Color','k')
text(6301-80,-1.3,'15','Color','k')
text(6801-80,-1.3,'20','Color','k')
text(7301-80,-1.3,'25','Color','k')

text(8101-120,-1.3,'990','Color','k')
text(8601-120,-1.3,'995','Color','k')
text(9101-160,-1.3,'1000','Color','k')
text(9601-160,-1.3,'1005','Color','k')
ylim([-2 1])
xlim([0 10000])
set(gca,'YTick',[])
set(gca,'XTick',[])

axis off
temp_frame=getframe(figure_handle);
imwrite(temp_frame.cdata,['GPS_Time_definition_8U8D.png']);
close(figure_handle);