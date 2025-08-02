FROM n8nio/n8n:latest

USER root
RUN apk add --no-cache tzdata
USER node

EXPOSE 5678

# Проверим где находится n8n и запустим
CMD ["sh", "-c", "which n8n && n8n start || node /usr/local/lib/node_modules/n8n/bin/n8n"]
