conda env create --force -f environment.yml&&
source activate myenv&&
jupyter-nbconvert Test.ipynb
