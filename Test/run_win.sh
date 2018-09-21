conda env create --force -f environment.yml&&
source activate test_env&&
jupyter-nbconvert Test.ipynb
