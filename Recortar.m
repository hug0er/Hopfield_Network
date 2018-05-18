function [M]= Recortar(M)
cnti = 1;
cntf = 1;
for i=1:length(M)
    if M(i) > 0
        cnti = i;
        break;
    end
end
for i=length(M):-1:1
    if M(i) > 0
        cntf = i;
        break;
    end
end
M = M(cnti:cntf);
end