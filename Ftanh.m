function [valor] =Ftanh(val,Pat,i)
    if ((Pat(i:1) == 1) & (tanh(val) > 0 ))
        valor = 0;
    elseif ((Pat(i:1) == 1) & (tanh(val) < 0))
        valor = 0;
    else 
        valor = tanh(val);
    end