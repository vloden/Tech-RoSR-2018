conda env create --force -f environment.yml&&
source activate myenv&&
jupyter-nbconvert --execute Test.ipynb --output Test_CI.html&&
mkdir -p Results&&
mv Test_CI.html Results
