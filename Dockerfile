FROM n8nio/n8n:1.71.1

# Expose port
EXPOSE 5678

ENV N8N_PORT=5678 \
    N8N_BASIC_AUTH_ACTIVE=true \
    N8N_BASIC_AUTH_USER=admin \
    N8N_BASIC_AUTH_PASSWORD=admin \
    N8N_HOST=0.0.0.0 \
    N8N_PROTOCOL=http

CMD ["n8n", "start"]
