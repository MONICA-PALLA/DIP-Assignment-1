hk = imread('squirrel.jpg');
F = fft2(hk);
F = fftshift(F);
F = abs(F);
F = log(F+1);
F = mat2gray(F);
imshow(F,[])