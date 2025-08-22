# Use the official n8n image as base
FROM n8nio/n8n:latest

# Set working directory
WORKDIR /data

# Copy any custom files (optional, e.g., custom nodes)
# COPY custom-nodes /home/node/.n8n/custom

# Expose n8n default port
EXPOSE 5678

# Environment variables (can also be set in docker-compose or at runtime)
ENV N8N_PORT=5678 \
    N8N_BASIC_AUTH_ACTIVE=true \
    N8N_BASIC_AUTH_USER=admin \
    N8N_BASIC_AUTH_PASSWORD=admin \
    N8N_HOST=0.0.0.0 \
    N8N_PROTOCOL=http

# Run n8n
CMD ["n8n", "start"]
