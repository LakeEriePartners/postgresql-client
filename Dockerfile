FROM debian:unstable-slim
RUN apt-get update && apt-get install -y \
    less \
    locales \
    libncurses5-dev \
    libncursesw5-dev \
    postgresql-client \
    pspg \
    vim \
    && rm -rf /var/lib/apt/lists/*
RUN sed -i -e 's/# en_US.UTF-8 UTF-8/en_US.UTF-8 UTF-8/' /etc/locale.gen && \
    locale-gen
ENV LANG en_US.UTF-8  
ENV LANGUAGE en_US:en  
ENV LC_ALL en_US.UTF-8
COPY .vimrc .psqlrc  /root/
ENTRYPOINT [ "psql" ]

