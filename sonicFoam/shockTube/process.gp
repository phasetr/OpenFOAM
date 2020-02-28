# 参考: plot 'ファイル' using 横軸に使う列の番号:縦軸に使う列の番号
set title "T"
set terminal png
plot   "postProcessing/sample/0.001/data_T_mag(U)_p.xy" using 1:2 lc rgb "#FF0000" # red
replot "postProcessing/sample/0.002/data_T_mag(U)_p.xy" using 1:2 lc rgb "#0000FF" # blue
replot "postProcessing/sample/0.003/data_T_mag(U)_p.xy" using 1:2 lc rgb "#808000" # olive
replot "postProcessing/sample/0.004/data_T_mag(U)_p.xy" using 1:2 lc rgb "#800080" # purple
replot "postProcessing/sample/0.005/data_T_mag(U)_p.xy" using 1:2 lc rgb "#008000" # green
replot "postProcessing/sample/0.006/data_T_mag(U)_p.xy" using 1:2 lc rgb "#00ffff" # aqua
replot "postProcessing/sample/0.007/data_T_mag(U)_p.xy" using 1:2 lc rgb "#000080" # navy
set out "plot_T.png"
replot

set title "U"
plot   "postProcessing/sample/0.001/data_T_mag(U)_p.xy" using 1:3 lc rgb "#FF0000" # red
replot "postProcessing/sample/0.002/data_T_mag(U)_p.xy" using 1:3 lc rgb "#0000FF" # blue
replot "postProcessing/sample/0.003/data_T_mag(U)_p.xy" using 1:3 lc rgb "#808000" # olive
replot "postProcessing/sample/0.004/data_T_mag(U)_p.xy" using 1:3 lc rgb "#800080" # purple
replot "postProcessing/sample/0.005/data_T_mag(U)_p.xy" using 1:3 lc rgb "#008000" # green
replot "postProcessing/sample/0.006/data_T_mag(U)_p.xy" using 1:3 lc rgb "#00ffff" # aqua
replot "postProcessing/sample/0.007/data_T_mag(U)_p.xy" using 1:3 lc rgb "#000080" # navy
set out "plot_norm_U.png"
replot

set title "p"
plot   "postProcessing/sample/0.001/data_T_mag(U)_p.xy" using 1:4 lc rgb "#FF0000" # red
replot "postProcessing/sample/0.002/data_T_mag(U)_p.xy" using 1:4 lc rgb "#0000FF" # blue
replot "postProcessing/sample/0.003/data_T_mag(U)_p.xy" using 1:4 lc rgb "#808000" # olive
replot "postProcessing/sample/0.004/data_T_mag(U)_p.xy" using 1:4 lc rgb "#800080" # purple
replot "postProcessing/sample/0.005/data_T_mag(U)_p.xy" using 1:4 lc rgb "#008000" # green
replot "postProcessing/sample/0.006/data_T_mag(U)_p.xy" using 1:4 lc rgb "#00ffff" # aqua
replot "postProcessing/sample/0.007/data_T_mag(U)_p.xy" using 1:4 lc rgb "#000080" # navy
set out "plot_p.png"
replot
