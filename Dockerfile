FROM  debian:buster-slim

LABEL org.opencontainers.image.title="setup-nextflow"
LABEL org.opencontainers.image.description="A GitHub Action to setup Nextflow."
LABEL org.opencontainers.image.url="https://github.com/https://github.com/stracquadaniolab/gh-action-setup-nextflow.git"
LABEL org.opencontainers.image.documentation="https://github.com/https://github.com/stracquadaniolab/gh-action-setup-nextflow.git"
LABEL org.opencontainers.image.source="https://github.com/https://github.com/stracquadaniolab/gh-action-setup-nextflow.git"
LABEL org.opencontainers.image.revision="v0.0.0"
LABEL org.opencontainers.image.vendor="stracquadaniolab"
LABEL org.opencontainers.image.authors="gstracquadanio"

ADD ./entrypoint.sh /usr/bin/entrypoint.sh

RUN chmod +x /usr/bin/entrypoint.sh

ENTRYPOINT [ "/usr/bin/entrypoint.sh" ]