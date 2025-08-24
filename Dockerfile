# Imagen base ligera
FROM node:18-alpine

WORKDIR /usr/src/app

# copiar package.json e instalar dependencias
COPY package.json package-lock.json* ./
RUN npm ci --only=production

# copiar código
COPY . .

EXPOSE 3000
CMD ["node", "app.js"]
