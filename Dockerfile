FROM n8nio/n8n:latest

USER root
RUN apk add --no-cache tzdata
USER node

EXPOSE 5678

# Установим рабочую директорию и запустим n8n напрямую
WORKDIR /data
CMD ["node", "/usr/local/lib/node_modules/n8n/bin/n8n"]
