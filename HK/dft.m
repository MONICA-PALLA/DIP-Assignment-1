hk = imread('squirel.jpg');
[m,n]=size(hk);
function output = dft(input)
  n = length(input);
  matrix = exp(-2i * pi / n * [0:n-1]' * [0:n-1]);
  if     all(size(input) == [1 n])  % Row vector
    output = input * matrix;
  elseif all(size(input) == [n 1])  % Column vector
    output = matrix * input;
  end
end