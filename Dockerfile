FROM node:10-alpine
RUN apk add --no-cache python make gcc g++ git
RUN npm config set unsafe-perm true
RUN mkdir /app
WORKDIR /app
ADD . /app
RUN npm install
RUN npm run build
EXPOSE 5001
CMD ["node","index.js"]