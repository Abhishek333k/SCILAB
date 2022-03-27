clc;
clear();
xdel(winsid());
Am=input('Enter Modulating signal amplitude value : ')
Fm=input('Enter frequency value : ')
Ac=input('Enter carrier signal amplitude value : ')
Fc=input('Enter frequency value : ')
n=input('enter no. of cycles : ')
t=(0:(1/(1000*Fc)):n/Fm)
Vm = Am*sin(((2*%pi)*Fm)*t)
subplot(311)
plot(t,Vm)
title('Message signal','color','red','fontsize',4)
xlabel('Time period','fontsize',2)
ylabel('Amplitude','fontsize',2)
Vc = Ac*sin(((2*%pi)*Fc)*t)
subplot(312)
plot(t,Vc)
title('Carrier signal','color','red','fontsize',4)
xlabel('Time period','fontsize',2)
ylabel('Amplitude','fontsize',2)
//m=ka*Am;
//-----------ka=1/Ac
m = Am/Ac;//when Ka(amplitude sensitivity)is not specified
//case - m<1 for under mod
// plot for under, critical, over modulated signals with different m values
Vamp = (Ac*(1+m*sin(((2*%pi)*Fm)*t))) .*sin(((2*%pi)*Fc)*t);
subplot(313)
plot(t,Vamp)
title('Amplitude Modulated Signal','color','red','fontsize',4)
xlabel('Time period','fontsize',2)
ylabel('Amplitude','fontsize',2)
