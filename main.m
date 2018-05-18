n = 600;

MatPesosPao=genpesos(orth(finalPao));
MatPesosHugo=genpesos(orth(finalHugo));
MatPesosDaniel=genpesos(orth(finalDaniel));
MatPesosAndres=genpesos(orth(finalAndres));


CP = noisevectorTanh(finalPao(:,end),0.2);
CH = noisevectorTanh(finalHugo(:,end),0.2);
CD = noisevectorTanh(finalDaniel(:,end),0.2);
CA = noisevectorTanh(finalAndres(:,end),0.2);

RP = normalizar(HopfieldContinuo(MatPesosPao,CP));

RH = normalizar(HopfieldContinuo(MatPesosHugo,CH));

RD = normalizar(HopfieldContinuo(MatPesosDaniel,CD));

RA = normalizar(HopfieldContinuo(MatPesosAndres,CA));

EvolFin = [];
contD2 = [];
for j=1:100
    for k=1:5
        EvolucionD = [];
        percent = 0;
        for i=1:10
            C = noisevectorTanh(finalDaniel(:,k),percent);
            R = normalizar(HopfieldContinuo(MatPesosDaniel,C));
            EvolucionD = [EvolucionD R];
            percent = percent +0.1;
        end
        EvolFin(:,:,k) = EvolucionD;
    end
    
    ErrorGraphD= [];
    for h=1:5
        for e=1:10
            for d=1:5
                ErrorGraphD(d,e,h) = immse(EvolFin(:,e,h),finalDaniel(:,d));
            end
        end
    end
    [~, valiD] = min(ErrorGraphD);
    
    
    contErD= [];
    for m=1:10
        contD = 0;
        for g=1:5
            if (valiD(:,m,g) == g)
                contD = contD + 1;
            end
        end
        contErD = [contErD contD];
    end
    
    contD2 = [contD2; contErD];
end

VecMean = (sum(contD2)/500)*100;
x = 0:10:90;
DV = std((contD2/5)*100);
errorbar(x,VecMean,DV,'-o','LineWidth',1,...
    'MarkerEdgeColor','red','MarkerFaceColor','red')
xlabel('Noise')
ylabel('Accuracy')
axis([-0.05 95 0 105])
GuardarGrap('Tab1')
