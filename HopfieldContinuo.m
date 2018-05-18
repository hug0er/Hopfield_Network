function [R]= HopfieldContinuo(W,Pat)
R = zeros(size (Pat,1),1);
%lr = 0.1;
for i=1:size(Pat,1)
    val = ((Pat')*(W(:,i)));
    R(i,1) = Ftanh(val,Pat,i);
end
end
