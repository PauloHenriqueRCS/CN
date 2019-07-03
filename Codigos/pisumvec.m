function s = pisumvec(ignore)%Forma v e t o r i z a d a
a = [1:10000];
  for j = 1:500
    s = sum(1./(a.^2));
  endfor 
 
endfunction
