FROM continuumio/miniconda3:4.5.11
MAINTAINER vladimirzyuzin@yandex.ru

# install the notebook package
# RUN pip install --no-cache --upgrade pip && \
#     pip install --no-cache notebook
# ENV HOME=/tmp

ADD . /tmp/
WORKDIR /tmp
RUN pip install -r requirements.txt && jupyter-nbconvert --execute src/Test.ipynb --output Test_doc.html

CMD /bin/sh
