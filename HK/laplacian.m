rk=imread('squirel.jpg');
hk = rgb2gray(rk);
%figure,imshow(hk);
I=zeros(size(hk));
I2=zeros(size(hk));
F1=[0 1 0;1 -4 1; 0 1 0];
hk=padarray(hk,[1,1]);
hk=double(hk);
for i=1:size(hk,1)-2
    for j=1:size(hk,2)-2
       
        I(i,j)=sum(sum(F1.*hk(i:i+2,j:j+2)));
       
    end
end

I=uint8(I);
figure,imshow(I);title('Filtered Image');

%B=I1-I;
%figure,imshow(B);title('Sharpened Image');