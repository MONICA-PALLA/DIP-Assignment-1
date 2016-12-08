hk=imread('squirel.jpg');
hk = rgb2gray(hk);
I=zeros(size(hk));
F1=[1/15 2/15 1/15;2/15 1/5 2/15;1/15 2/15 1/15];
hk=padarray(hk,[1,1]);
hk=double(hk);
for i=1:size(hk,1)-2
 
    for j=1:size(hk,2)-2
   
        I(i,j)=sum(sum(F1.*hk(i:i+2,j:j+2)));    
    end
end
I=uint8(I);
figure,imshow(I);title('Filtered Image');