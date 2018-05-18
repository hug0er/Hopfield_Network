function [Vr] = noisevectorTanh(V,noisel)
sv=size(V,1);
Vr=zeros(sv,1);
for i=1:sv
    r1=rand(sv,2);

   if (r1(i,1) < noisel) Vr(i)=abs(tanh(r1(i,2)-0.5));
   else Vr(i)=V(i);
   end
end

       