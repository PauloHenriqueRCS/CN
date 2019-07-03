function M = mandelperf (ignore) %Fun¸c˜ao p r i n c i p a l
M = zeros (length(-2.0:.1:0.5),length(-1:.1:1));
count = 1;
for r = -2:0.1:0.5
  for i = -1:.1:1
    i
    complex(r,i)
    mandel(complex(r,i))
    M(count) = mandel(complex(r,i)); %complex ( a , b)=a+b i
    count = count + 1 ;
    end
  end
end
