FROM ubuntu:devel@sha256:5780eeea246d5e8e76c20dfedf03d4d9568cd4ba00af5a7e3762b6976df2b631
# ARG REVISION
# ARG SOURCE
# LABEL org.opencontainers.image.revision=$REVISION
# LABEL org.opencontainers.image.source=$SOURCE
RUN echo '{:version 103}' > dog.json
CMD ["cat", "dog.json"]
