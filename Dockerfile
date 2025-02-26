# Use the official Ollama base image
FROM ollama/ollama:latest

# Set the working directory (optional)
WORKDIR /app

# Expose the Ollama API port
EXPOSE 11434

# Start Ollama and load Llama 3 on container startup
# ENTRYPOINT ["ollama"]
# CMD ["serve"]
CMD ["sh", "-c", "ollama serve & sleep 5 && ollama pull gemma:2b && tail -f /dev/null"]
