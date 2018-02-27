FROM jupyter/scipy-notebook:latest
LABEL maintainer="Roman Imankulov <roman.imankulov@gmail.com>"

USER $NB_UID
RUN conda install --quiet --yes python-dotenv
RUN conda install --quiet --yes \
        boto3 \
        mysql-connector-python \
        psycopg2 \
        python-dotenv \
        records \
        redis \
        sqlalchemy \
        ua-parser
USER root
RUN jupyter labextension install jupyterlab_bokeh
USER $NB_UID
