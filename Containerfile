# The launcher on the released base; `packages` in plugin.json keeps OpenSSH updated from Debian.
ARG BASE
FROM ${BASE}
COPY start.sh /usr/local/bin/start.sh
RUN chmod 755 /usr/local/bin/start.sh
