function y = twotimesimage(i)

x = size(i, 2);
y = size(i, 1);
l = zeros(y, 2 * x - 1);

for m = 1:y
    for n = 1:x
        l(m, 2 * n - 1) = i(m, n);
    end    
end

for m = 1:y
    for n = 2:2:(2*x - 1)
        if(mod(n, 2) == 0 && m == n)
            l(m, n) = (l(m, n - 1) + l(m, n + 1)) / 2;
        else
            l(m, n) = nlag((m + n)/2, [m, n], [l(m, n - 1), l(m, n + 1)]);
        end
    end    
end

y = l;

end