function valid = valid_date(year, month, day)
valid = true;

if isscalar(year) && isscalar(month) && isscalar(day)

if year <= 0 || month <= 0 || day <= 0
    valid = false;
end

if floor(month) ~= month || floor(year) ~= year || floor(day) ~= day
    valid = false;
end

if month > 12
    valid = false;
end


if month == 1 || month ==3 || month ==5 || month ==7 || month ==8 || month ==10 || month ==12 
    if day > 31 
        valid = false;
    end
end
if month == 4 || month ==6 || month ==9 || month ==11
    if day > 30 
        valid = false;
    end
end
if month == 2
    if day > 28
        valid = false;
    end
    if mod(year, 400) == 0
        if day == 29
            valid = true;
        end
    elseif mod(year, 100) == 0
    elseif mod(year, 4) == 0
        if day == 29
            valid = true;
        end
    end
end
else
    valid = false;
end

        
