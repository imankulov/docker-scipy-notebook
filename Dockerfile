FROM jupyter/scipy-notebook:latest
LABEL maintainer="Roman Imankulov <roman.imankulov@gmail.com>"

USER $NB_UID
RUN conda install --quiet --yes \
        boto3 \
        ua-parser \
        redis \
        psycopg2 \
        mysql-connector-python \
        records \
        sqlalchemy
