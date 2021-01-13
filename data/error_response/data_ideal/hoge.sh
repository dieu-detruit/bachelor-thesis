mkdir -p ~/mimuralab/bthesis/paper/thesis/chap2/figure/ideal
for dir in $(ls); do
    cp $dir/focus_abs.png ~/mimuralab/bthesis/paper/thesis/chap2/figure/ideal
    mv "/home/dieu/mimuralab/bthesis/paper/thesis/chap2/figure/ideal/focus_abs.png" "/home/dieu/mimuralab/bthesis/paper/thesis/chap2/figure/ideal/${dir}_focus_abs.png"
done
