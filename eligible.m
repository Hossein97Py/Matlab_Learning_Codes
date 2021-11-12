function admit = eligible(v, q)
admit = false;
if mean([v q]) >= 92;
    if v > 88
        if q > 88
            admit = true;
        end
    end
end


