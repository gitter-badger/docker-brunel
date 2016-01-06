FROM jupyter/notebook:stable

ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update \
 && apt-get install -y \
 wget \
 curl \
 unzip \
 openjdk-7-jdk \
 python3-pandas \
 python3-numpy \
 && apt-get autoremove -y \
 && apt-get clean -y

RUN pip3 install ipywidgets
RUN pip3 install brunel

CMD ipython notebook --ip='*'
