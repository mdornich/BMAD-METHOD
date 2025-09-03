# Use Node.js 20 LTS as base image
FROM node:20-alpine

# Set working directory
WORKDIR /app

# Install git (needed for some npm packages)
RUN apk add --no-cache git

# Copy package files
COPY package*.json ./

# Install dependencies
RUN npm ci

# Copy the entire project
COPY . .

# Build BMAD-METHOD
RUN npm run build || true

# Create a directory for user projects
RUN mkdir -p /workspace

# Set the workspace as the working directory
WORKDIR /workspace

# Expose port for any web UI (if needed)
EXPOSE 3000

# Default command - can be overridden
CMD ["sh", "-c", "echo 'BMAD-METHOD Docker Container Ready!' && echo 'Run: npx bmad-method install' && echo 'Or mount your project directory to /workspace' && /bin/sh"]