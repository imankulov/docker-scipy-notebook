FROM jupyter/scipy-notebook:latest
LABEL maintainer="Roman Imankulov <roman.imankulov@gmail.com>"

USER $NB_UID
RUN conda install --quiet --yes \
        ua-parser
