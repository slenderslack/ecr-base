FROM ubuntu:devel@sha256:3926879b4ca2739cae416dcb391332eb84a1c79928f98ae0176c6b8e3c7de312
ARG REVISION
ARG SOURCE
LABEL org.opencontainers.image.revision=$REVISION
LABEL org.opencontainers.image.source=$SOURCE
RUN echo '{:version 41}' > dog.json
CMD ["cat", "dog.json"]
