FROM python:3.7-slim
MAINTAINER vladimirzyuzin@yandex.ru

# install the notebook package
RUN pip install --no-cache --upgrade pip && \
    pip install --no-cache notebook
ENV HOME=/tmp

ADD . /tmp/
WORKDIR /tmp
RUN pip install -r requirements.txt && jupyter-nbconvert --execute src/Test.ipynb --output Test_doc.html
RUN mkdir ~/.kaggle && echo $KaggleAPI > ~/.kaggle/kaggle.json && cd kaggle && mkdir input && cd input && kaggle competitions download titanic
CMD /bin/sh
