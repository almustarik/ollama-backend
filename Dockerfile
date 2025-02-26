# Use the official Ollama base image
FROM ollama/ollama:latest

# Set the working directory (optional)
WORKDIR /app

# Expose the Ollama API port
EXPOSE 11434

# Ensure Ollama is correctly started as an entrypoint
ENTRYPOINT ["ollama"]
CMD ["serve"]
