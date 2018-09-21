conda env create --force -f environment.yml&&
source activate ml_tasks&&
jupyter-nbconvert --execute Test.ipynb
