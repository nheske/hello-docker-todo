FROM node:12-alpine
RUN apk add --no-cache python g++ make
WORKDIR /app
COPY . .
RUN yarn install --production
# Open port 3000
EXPOSE 3000
CMD ["node", "src/index.js"]