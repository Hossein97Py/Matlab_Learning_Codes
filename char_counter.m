function charnum = char_counter(fname,char)
fid = fopen(fname, 'rt');
next_line = ''; charnum = 0;

if fid < 0
    charnum = -1;
    return
end

if ~ischar(char)
    charnum = -1;
    return
end    

while ischar(next_line)
    next_line = fgetl(fid);
    for ind = next_line
        if ind == char
            charnum = charnum + 1;
        end
    end
end
fclose(fid);