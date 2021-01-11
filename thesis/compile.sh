if [ -d build ]; then
    mv build/clone.* .
else
    mkdir build
fi

cp main.tex clone.tex

# build
#platex clone.tex
#pbibtex references.bib
#platex clone.tex 
#platex clone.tex 
#dvipdfmx clone
latexmk

# move intermediate files to build dir
mv clone.* build
mv build/clone.pdf build/thesis.pdf

#for dir in $(ls); do
#    if [ -d $dir ]; then
#        mkdir -p build/$dir
#        mv $dir/*.log build/$dir/
#    fi
#done
