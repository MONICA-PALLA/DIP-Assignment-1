rk = imread('squirrel.jpg');
for t = 1:3
    hk = rk(:,:,t);
    x = unique(hk);
    m = [x,histc(hk(:),x)];
    for i = 2:size(m,1)
     m(i,2) = m(i,2)+m(i-1,2);
    end
    z = size(hk,1)*size(hk,2);
    for i = 1:size(hk,1)
        for j = 1:size(hk,2)
            v = hk(i,j);
            for k = 1:size(m,1)
%                 for l = 1:size(m,2)
                 if m(k,1) == v
                     hk(i,j) = 255*m(k,2)*(1/z) ;
              
                 end
            end
        end
    end
    imshow(hk);
end