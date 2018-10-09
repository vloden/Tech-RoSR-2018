FROM continuumio/miniconda3:4.5.11
MAINTAINER vladimirzyuzin@yandex.ru

# install the notebook package
RUN pip install --no-cache --upgrade pip && \
    pip install --no-cache notebook
ENV HOME=/tmp

ADD * /tmp/
RUN cd /tmp
RUN conda env create --force -f environment.yml
RUN source activate myenv
RUN jupyter-nbconvert --execute src/Test.ipynb --output Test_win.html

CMD /bin/sh
