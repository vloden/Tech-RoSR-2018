conda env create --force -f environment_MacOS.yml&&
source activate ml-tasks&&
jupyter-nbconvert --execute Test.ipynb --output Test_CI.html&&
mkdir -p Results&&
mv Test_CI.html Results
