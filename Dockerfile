FROM continuumio/miniconda3
MAINTAINER vladimirzyuzin@yandex.ru

ADD * /tmp/
RUN cd /tmp && ./run_win.sh

CMD /bin/sh
