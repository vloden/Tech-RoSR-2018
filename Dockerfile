FROM python:3.7-slim
MAINTAINER vladimirzyuzin@yandex.ru

# install the notebook package
RUN pip install --no-cache --upgrade pip && \
    pip install --no-cache notebook
ENV HOME=/tmp

ADD * /tmp/
RUN cd /tmp && chmod +x run_win.sh && ./run_win.sh

CMD /bin/sh
