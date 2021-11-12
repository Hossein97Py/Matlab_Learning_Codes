function [summa, index] = max_sum(V,n)
summa = -2000000;
for i = 1:length(V)-n+1

    a = 0;
    for j = i : i+n-1
        a = a + V(j);
    end

    if a > summa
        summa = a;
        index = i;
    end
end
if n > length(V)
    summa = 0;
    index = -1;
end


