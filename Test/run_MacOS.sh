conda env create --force -f environment_MacOS.yml&&
source activate ml-tasks&&
jupyter-nbconvert --execute Test.ipynb
