FROM ghcr.io/getzola/zola:v0.19.2 AS zola

COPY . /project
WORKDIR /project
# RUN ["zola", "build"]
ENTRYPOINT [ "zola" ]
