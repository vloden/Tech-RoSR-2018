. venv/bin/activate &&
jupyter-nbconvert --execute Test.ipynb &&
mkdir -p Results &&
mv Test.html Results
