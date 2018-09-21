conda env create --force -f environment_MacOS.yml&&
source activate ml_tasks&&
jupyter-nbconvert --execute Test.ipynb
