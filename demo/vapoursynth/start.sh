vspipe --y4m "aaa.vpy" - | x265_10bit --y4m  --crf 20   --preset slow  --no-sao --strong-intra-smoothing   --no-open-gop --no-rect --no-amp  --ctu 32 --weightb --qpmax 28  --limit-tu=4 --aq-mode 3 --aq-strength 0.8 --min-keyint 1 --merange 44  --keyint 600 --colorprim bt709  --qcomp 0.65 --range limited --pools 20 --vbv-bufsize 27000 --vbv-maxrate 27000 --psy-rd 3 --psy-rdoq 2 --bframes 6 --rdoq-level 2 --weightb --rd 4   -o  "aaa.h265" -