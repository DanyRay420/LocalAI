FROM node:25.6.0-bookworm
COPY ./langchainjs-localai-example /app
WORKDIR /app
RUN npm install
RUN npm run build
ENTRYPOINT [ "npm", "run", "start" ]