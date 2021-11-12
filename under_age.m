function too_young = under_age(age, limit)
if ~exist('limit', 'var')
    limit = 21;
end
if age < limit
    too_young = true;
else 
    too_young = false;
end