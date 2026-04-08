FROM nginx:latest
COPY index.html/usr/share/nginx/html/
WORKDIR /app
RUN npm install
CMD ["node", "app.js"]
