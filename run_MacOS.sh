conda env create --force -f environment_MacOS.yml&&
source activate ml-tasks&&
jupyter-nbconvert --execute src/Test.ipynb --output Test_MacOS.html
