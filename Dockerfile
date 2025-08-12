FROM node:18
WORKDIR /app
COPY . .
RUN npm install && npm run build
EXPOSE 4173

CMD ["npm", "run", "start"]
