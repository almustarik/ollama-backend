# # Use the official Ollama base image
# FROM ollama/ollama:latest

# # Set the working directory (optional)
# WORKDIR /app

# # Expose the Ollama API port
# EXPOSE 11434

# # Start Ollama and load Llama 3 on container startup
# ENTRYPOINT ["ollama"]
# CMD ["serve"]

# # Use official Ollama base image
# FROM ollama/ollama:latest

# # Ensure the model is preloaded (but will reload on restart due to Render's ephemeral storage)
# RUN ollama pull llama3

# # Expose Ollama's default API port
# EXPOSE 11434

# # Start Ollama server
# CMD ["ollama", "serve"]

# Use official Ollama image
FROM ollama/ollama:latest

# Expose Ollama API port
EXPOSE 11434

# Start Ollama server and ensure model is loaded
CMD ollama serve & sleep 2 && ollama pull llama3 && tail -f /dev/null