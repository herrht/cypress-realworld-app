FROM node:22-slim

WORKDIR /app

# Enable Yarn via Corepack
RUN corepack enable

# Copy everything
COPY . .

# Install dependencies
RUN yarn install

# Expose frontend & backend ports
EXPOSE 3000 3001

# Start app (re-seeds DB)
CMD ["yarn", "dev"]
