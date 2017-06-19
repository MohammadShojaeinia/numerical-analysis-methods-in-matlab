function GaussSeidel(coefs, vars, ress, iters)
    for k = 1:iters
        temp = zeros(size(vars));
        
        if((size(coefs, 2) ~= size(vars, 1)) && (size(ress, 2) ~= size(vars, 1)))
            disp('check marices sizes');
            return;
        else 
           for i = 1:(size(coefs, 1))
                temp(i, 1) = ress(i, 1);
                for j = 1:(size(coefs, 2))
                    if(i ~= j)
                        temp(i, 1) = (temp(i, 1)) - (coefs(i, j)*vars(j, 1));
                    end
                end
                temp(i, 1) = temp(i, 1) / coefs(i, i);
                vars(i, 1) = temp(i, 1);
           end
        end
    end
    temp
end