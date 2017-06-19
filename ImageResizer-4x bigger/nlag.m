function y = nlag(x,xs,ys)

n = size(xs, 2);
l = ones(n);

if (size(xs)~=size(ys))
   disp('xs and ys must have the same size!\n');
else
   for i = 1:n
      for j = 1:n
         if (i ~= j)
            l(i) = l(i)*(x - xs(j)) / (xs(i) - xs(j));
         end
      end
   end
   
   y = 0;
   
   for i=1:n
      y = y + ys(i) * l(i);
   end
   
end