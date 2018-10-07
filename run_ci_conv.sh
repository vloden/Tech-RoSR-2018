. venv/bin/activate &&
jupyter-nbconvert --execute src/Test.ipynb &&
mkdir -p Results &&
mv src/Test.html Results
