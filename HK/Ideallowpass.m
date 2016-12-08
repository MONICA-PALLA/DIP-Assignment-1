




d0 = %radius

d(u,v) = double((u-M/2)^2+(v-N/2)^2).^(1/2);
% distance from the origin in the frequency plane.
if d(u,v) < d0
    h(u,v) = 0;
else
    h(u,v) = 1;
