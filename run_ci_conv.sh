. venv/bin/activate &&
jupyter-nbconvert --execute src/Test.ipynb &&
mkdir -p Results &&
mv Test.html Results
