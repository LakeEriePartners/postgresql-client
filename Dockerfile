FROM debian:unstable-slim
RUN apt-get update && apt-get install -y \
    less \
    postgresql-client \
    vim \
    && rm -rf /var/lib/apt/lists/*
COPY .vimrc .psqlrc  /root/
ENTRYPOINT [ "psql" ]

