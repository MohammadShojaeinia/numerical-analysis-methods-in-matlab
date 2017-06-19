function [ out ] = Dislocation(a, b, f, max )
x = a;
fa = eval(f)
x = b;
fb = eval(f)

i = 0;

if(fa * fb < 0)
   while(i < max)
    i = i + 1
    c = (a*fb - b*fa)/(fb-fa);
    x = c;
    fc = eval(f);
    if(fa * fc < 0)
       b = c;
    else
       a = c;
    end
    x = a;
    fa = eval(f);
    x = b;
    fb = eval(f);
       
       
   end
else
   disp('Error'); 
   return
end

out = (a*fb - b*fa)/(fb-fa);

end
