FROM debian:unstable-slim
RUN apt-get update && apt-get install -y \
    less \
    postgresql-client \
    && rm -rf /var/lib/apt/lists/*
COPY .psqlrc  /root/.psqlrc
ENTRYPOINT [ "psql" ]

