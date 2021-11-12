function matrix = sparse2matrix(cellvec)
matrix = cellvec{2} * (zeros(cellvec{1}) + 1);
for i = 3:length(cellvec)
    m = cellvec{i}(1, 1);
    n = cellvec{i}(1, 2);
    val = cellvec{i}(1, 3);
    matrix(m, n) = val;
end

