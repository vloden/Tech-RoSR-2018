conda env create --force -f environment.yml&&
source activate myenv&&
jupyter-nbconvert --execute src/Test.ipynb --output Test_win.html
