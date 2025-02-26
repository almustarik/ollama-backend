# Use an official Ollama base image
FROM ollama/ollama:latest

# Expose the port for Ollama API
EXPOSE 11434

# Start Ollama when the container runs
CMD ["ollama", "serve"]
