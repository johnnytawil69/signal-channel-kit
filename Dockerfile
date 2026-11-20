FROM node:20-alpine
WORKDIR /app
ENV NODE_ENV=production DATA_DIR=/data PORT=8080
COPY package.json ./
COPY src ./src
RUN mkdir -p /data /app/data && chown -R node:node /app /data
USER node
EXPOSE 8080
CMD ["node", "src/index.js"]
