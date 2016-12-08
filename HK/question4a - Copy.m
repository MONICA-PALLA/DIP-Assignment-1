rk=imread('125088.jpg');
hk = rgb2gray(rk);
imshow(hk);
%figure,imshow(hk);
%I=zeros(size(hk));
%I2=zeros(size(hk));
%F1=[0 1 0;1 -4 1; 0 1 0];
hk=padarray(hk,[1,1]);
%hk=double(hk);
for i=2:size(hk,1)-1
    for j=2:size(hk,2)-1
       
        X = hk(i+1,j+1)+2*hk(i+1,j)+hk(i+1,j-1)-(hk(i-1,j-1)+2*hk(i-1,j)+hk(i-1,j+1));
        Y = hk(i-1,j+1)+2*hk(i,j+1)+hk(i+1,j+1)-(hk(i-1,j-1)+2*hk(i,j-1)+hk(i+1,j-1));
        G = X^2 + Y^2;
        s = double(G).^(1/2);
        hk(i,j) = s;
        
    end
end
imshow(hk);