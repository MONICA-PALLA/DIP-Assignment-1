hk = imread('squirrel.jpg');
rk = rgb2gray(hk);
%imshow(rk);
rk=padarray(rk,[1,1]);
for i=2:size(rk,1)-1
    for j=2:size(rk,2)-1
        v = (1/16)*(rk(i-1,j-1)+rk(i-1,j+1)+rk(i+1,j-1)+rk(i+1,j+1)+ 2*(rk(i-1,j)+rk(i+1,j)+rk(i,j-1)+rk(i,j+1))+ 4*rk(i,j));
        for m = i-1:i+1
            for n = j-1:j+1
                a(m,n) = v;
            end
        end
            
    end
end
imshow(rk);