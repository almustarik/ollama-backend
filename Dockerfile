# Use the official Ollama base image
FROM ollama/ollama:latest

# Set the working directory (optional)
WORKDIR /app

# Expose the Ollama API port
EXPOSE 11434

# Ensure the Llama 3 model is pulled during build
RUN ollama pull llama3

# Ensure Ollama is correctly started with Llama 3
ENTRYPOINT ["ollama"]
CMD ["serve"]
