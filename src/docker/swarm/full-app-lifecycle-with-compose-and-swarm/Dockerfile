FROM drupal:8.8.2


RUN apt-get update && apt-get install -y git \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /var/www/html/core

#copy any desired data to the container
COPY ./themes ./themes

WORKDIR /var/www/html
