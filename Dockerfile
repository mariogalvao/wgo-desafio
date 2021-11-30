FROM node:boron

RUN npm install -g wgo-desafio

COPY entrypoint.sh /
RUN chmod +x /entrypoint.sh
ENTRYPOINT "/entrypoint.sh" ; /bin/bash
