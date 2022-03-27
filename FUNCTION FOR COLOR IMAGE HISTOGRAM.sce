//Save this file with the function name
//Don't Execute this file - This is a function not a program
function [hea]=hist_eq(a)
[m n]=size(a);
for i=1:256
 b(i)=length(find(a==(i-1)));
end
pb=b/(m*n)
cmpb(1)=pb(1);
for i=2:256
 cmpb(i)=pb(i)+cmpb(i-1)
end
 ni=(cmpb*255);
 new=uint8(round(ni))
for i=1:m
 for j=1:n
 ind=double(a(i,j));
 hea(i,j)=new(ind+1);
 end
end
endfunction
