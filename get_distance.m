function distance = get_distance(city1, city2)
Data = readtable('Distances.xlsx');
c1 = 0; c2 = 0;
cities = Data(:,1);
for i = 1:336
    if length(cities {i, 1}{1, 1}) == length(city1)
        if cities {i, 1}{1, 1} == city1
            c1 = i;
        end
    end
    if length(cities{i, 1}{1, 1}) == length(city2)
        if cities {i, 1}{1, 1} == city2
            c2 = i;
        end
    end
end

if c1 && c2
    distance = Data{c1, (c2)+1};
else
    distance = -1;
end





