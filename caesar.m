function coded = caesar(put, n)
coded = '';
ALL = ' ':'~';
for i = put
    put_index = find(ALL == i);
    coded_index = put_index + n;
    while coded_index > length(ALL)
        coded_index = coded_index - length(ALL);
    end
    while coded_index < 1
        coded_index = length(ALL) + coded_index;
    end
    coded = append(coded, ALL(coded_index));
end
            