function [W]=genpesos(pats)
n = size(pats,1);
W =  (pats * (pats')) * 1/n;
for i = 1:n
    W(i,i) = 0;
end