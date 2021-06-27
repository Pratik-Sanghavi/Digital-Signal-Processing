nrows = 6;
ncols = 6;
A = ones(nrows,ncols);
for c = 1:ncols
    for r = 1:nrows
        
        if r == c
            A(r,c) = 2;
        elseif abs(r-c) == 1
            A(r,c) = -1;
        else
            A(r,c) = 0;
        end
        
    end
end
disp(A)