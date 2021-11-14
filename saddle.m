function indices = saddle(M)
indices = [];
[r, c] = size(M);
for i = 1:r
    m = M(i,:);
    maks = max(m);
    row_max_index = find(m == maks);
    % for multiple max in one row
    for j = row_max_index
        one_row = M(:,j);
        mini = min(one_row);
        if mini == maks
            indices = [indices;i, j ];
        end
    end
end



