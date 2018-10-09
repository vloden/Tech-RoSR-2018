FROM continuumio/miniconda3:4.5.11
MAINTAINER vladimirzyuzin@yandex.ru

# install the notebook package
RUN pip install --no-cache --upgrade pip && \
    pip install --no-cache notebook
ENV HOME=/tmp

ADD * /tmp/
SHELL ["/bin/bash", "-c"]
RUN cd /tmp && chmod +x run_doc.sh && ./run_doc.sh

CMD /bin/sh
