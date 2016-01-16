set terminal pdfcairo
set output "PlotScale-in-FH_new_low-selected-high.pdf"
set xlabel "M_S / TeV"
set ylabel "M_h / GeV"
set grid
set key box bottom right
set style fill transparent solid 0.1

set style line 1 lt 1 dt 1 lw 2 lc rgb "#FF0000"
set style line 2 lt 1 dt 2 lw 2 lc rgb "#0000FF"
set style line 3 lt 1 dt 4 lw 2 lc rgb "#45AD53"

datafile = "scale_high.dat"

plot [:] [70:] \
     datafile u ($1/1000):2 w lines ls 1 t 'mixed', \
     datafile u ($1/1000):3 w lines ls 3 t 'diagrammatic', \
     datafile u ($1/1000):4 w lines ls 2 t 'EFT'