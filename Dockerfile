# Use a imagem base do Node.js
FROM node:18-alpine

# Defina o diretório de trabalho dentro do container
WORKDIR /app

# Copie o arquivo package.json e package-lock.json para o diretório de trabalho
COPY package*.json ./

# Instale as dependências do projeto
RUN npm install

# Copie os arquivos do projeto para o diretório de trabalho
COPY . .

# Compile o código TypeScript
RUN npm run build

# Defina o comando de inicialização do container
CMD ["node", "dist/index.js"]