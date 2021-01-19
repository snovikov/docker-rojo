FROM debian:buster-slim AS wget
WORKDIR /tmp
RUN apt update && apt install -qy wget unzip
RUN wget https://github.com/rojo-rbx/rojo/releases/download/v6.0.0/rojo-6.0.0-linux.zip \
      && unzip rojo-6.0.0-linux.zip \
      && chmod +x rojo

FROM debian:buster-slim
RUN apt-get update && apt-get install -qy libssl1.1 && rm -rf /var/lib/apt/lists/*
COPY --from=wget /tmp/rojo /usr/local/bin/rojo
CMD ["rojo"]
