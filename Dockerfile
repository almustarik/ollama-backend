# Use the official Ollama base image
FROM ollama/ollama:latest

# Set the working directory (optional)
WORKDIR /app

# Expose the Ollama API port
EXPOSE 11434

# Start Ollama and load Llama 3 on container startup
ENTRYPOINT ["ollama"]
CMD ["serve"]
