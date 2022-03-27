clc;
clear();
xdel(winsid());
Am=input('Enter Modulating signal amplitude value : ')
Fm=input('Enter frequency value : ')
Ac=input('Enter carrier signal amplitude value : ')
Fc=input('Enter frequency value : ')
//mod index((kf*Am)/Fm) <1 for Nrbnd FM and >1 for Wdbnd FM
Kf=input('enter Frequency sensitivity : ')
n=input('enter no. of cycles : ')
t=(0:(1/(1000*Fc)):n/Fm)
Vm = Am*cos(((2*%pi)*Fm)*t)
subplot(311)
plot(t,Vm)
title('Message signal','color','red','fontsize',4)
xlabel('Time period','fontsize',2)
ylabel('Amplitude','fontsize',2)
Vc = Ac*cos(((2*%pi)*Fc)*t)
subplot(312)
plot(t,Vc)
title('Carrier signal','color','red','fontsize',4)
xlabel('Time period','fontsize',2)
ylabel('Amplitude','fontsize',2)
m = ((Kf*Am)/Fm);
Vfm = Ac*cos((2*%pi*Fc*t)+(m*sin(2*%pi*Fm*t)));
subplot(313)
plot(t,Vfm)
title('Frequency Modulated Signal','color','red','fontsize',4)
xlabel('Time period','fontsize',2)
ylabel('Amplitude','fontsize',2)
