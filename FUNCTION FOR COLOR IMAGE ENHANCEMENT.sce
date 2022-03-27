//Save this file with the function name
//Don't Execute this file - This is a function not a program
function [b, c]=imageenh(a)
 [m n]=size(a); //storing original image size m rows and n columns
a1=zeros(m+2,n+2) //new image a1 with all zeros with size m+2 rows and n+2 columns
for i=2:m+1 //creating a1 as original image but border with all zeros
 for j=2:n+1
 a1(i,j)=a(i-1,j-1)
 end
end
for i=2:m+1 //creating mask 3x3 and finding mean & median which stores in b and c
respectively
 for j=2:n+1
 mask=a1((i-1):(i+1),(j-1):(j+1));
 b(i-1,j-1)=mean(mask);
 c(i-1,j-1)=median(mask);
 end
end
endfunction
