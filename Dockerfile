FROM jupyter/datascience-notebook:latest
LABEL maintainer="Roman Imankulov <roman.imankulov@gmail.com>"

USER $NB_UID
RUN conda install --quiet --yes \
        boto3 \
        mysql-connector-python \
        psycopg2 \
        records \
        redis \
        sqlalchemy \
        python-dotenv \
        pandasql \
        tqdm \
        ua-parser \
        plotly \
        yapf \
        fs \
        fs-s3fs \
        s3fs \
        r-rmariadb \
    && pip install geoip2 bitmapist4 defusedxml

USER root

RUN \
    apt-get update && apt-get install -yq --no-install-recommends \
        openssh-client \
        less \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*
ENV EDITOR=vim
USER $NB_UID
