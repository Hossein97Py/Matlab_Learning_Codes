function [a, b, c, d] = corners (A)
a = A(1,1);
b = A(1, end);
c = A(end, 1);
d = A(end, end);