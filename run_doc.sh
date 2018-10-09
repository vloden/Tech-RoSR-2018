conda env create --force -f environment.yml&&
source activate myenv&&
ls&&
jupyter-nbconvert --execute Test.ipynb --output Test_doc.html
