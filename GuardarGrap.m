function GuardarGrap(File)
ax = gca;
ax.FontSize = 18;
set(gcf, 'PaperPosition', [0 0 10 6]);
set(gcf, 'PaperSize', [10 6]); %Keep the same paper size
saveas(gcf, File, 'pdf')
open([File '.pdf'])