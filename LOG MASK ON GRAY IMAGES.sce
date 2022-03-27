//LOG MASK Implementation
clc
clear()
xdel(winsid())
a= imread(path to cameraman.jpeg');
figure
imshow(a)
title('Input Image','fontsize',4);
a=double(a);
[m n]= size(a);
//Defining LOG mask coefficients with size 9x9
logmask=[0 1 1 2 2 2 1 1 0;1 2 4 5 5 5 4 2 1;1 4 5 3 0 3 5 4 1;2 5 3 -12 -24 -12 3 5 2;2 5 0 -24 -40 -24
0 5 2;2 5 3 -12 -24 -12 3 5 2;1 4 5 3 0 3 5 4 1;1 2 4 5 5 5 4 2 1;0 1 1 2 2 2 1 1 0];
//Adding rows and columns with zeros
[m1 n1 ]= size(logmask);
b= zeros(m+m1-1,n+n1-1) ;
m2=floor(m1/2);
n2=floor(n1/2);
b(m2+1:m+m2,n2+1:n+n2)=a;
//Applying LOG mask
for i=m2+1:m+m2
 for j=n2+1:n+n2
 c=b(i-m2:i+m2,j-n2:j+n2);
d= sum(sum(c.*logmask ));
//Applying Threshold to the mask
if d>150
e(i-m2,j-n2)=0;
else
e(i-m2,j-n2)=1;
end
end
end
figure
title('Camerman image after LOG masked','fontsize',4)
imshow(e)
