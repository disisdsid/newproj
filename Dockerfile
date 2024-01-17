# Use a lightweight base image
FROM alpine:3.14

# Set the working directory
WORKDIR /app

# Create a simple "Hello, World!" text file
RUN echo "Hello, World!" > index.html

# Expose port 80
EXPOSE 80

# Command to run when the container starts
CMD ["cat", "index.html"]
