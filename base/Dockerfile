FROM ubuntu:devel@sha256:7821ee41a502442af4ba94beb989cc13d1e04fa5f9ea679d140edf5528923e2d
# ARG REVISION
# ARG SOURCE
# LABEL org.opencontainers.image.revision=$REVISION
# LABEL org.opencontainers.image.source=$SOURCE
RUN echo '{:version 89}' > dog.json
CMD ["cat", "dog.json"]
