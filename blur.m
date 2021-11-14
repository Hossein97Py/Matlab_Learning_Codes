function bluredimg = blur(img, w)
[r, c] = size(img);
bluredimg = uint8(zeros(r,c));
for i = 1:r
    for j = 1:c

        %***************
        first_row = i-w;
        if first_row < 1
            first_row = 1;
        end

        last_row = i+w;
        if last_row > r
            last_row = r;
        end

        first_column = j-w;
        if first_column < 1
            first_column = 1;
        end

        last_column = j+w;
        if last_column > c
            last_column = c;
        end
        
        counter = 0;
        Ave = 0;
        for submatrixRow = first_row:last_row
            for submatrixColumn = first_column:last_column
                Ave = (double(Ave) + double(img(submatrixRow, submatrixColumn)));
                counter = counter + 1;
            end
        end
        bluredimg(i, j) = (Ave/counter);
    end
end



            

