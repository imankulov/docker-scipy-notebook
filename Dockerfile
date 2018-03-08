FROM jupyter/scipy-notebook:latest
LABEL maintainer="Roman Imankulov <roman.imankulov@gmail.com>"

USER $NB_UID
RUN conda install --quiet --yes \
        bqplot \
        boto3 \
        mysql-connector-python \
        psycopg2 \
        python-dotenv \
        records \
        redis \
        sqlalchemy \
        python-dotenv \
        ua-parser
USER root
RUN jupyter labextension install \
        jupyterlab_bokeh \
        bqplot
RUN apt-get update && apt-get install -yq --no-install-recommends \
        openssh-client \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

USER $NB_UID
