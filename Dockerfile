FROM node:20

# Instala PNPM
RUN npm install -g pnpm

# Establece directorio
WORKDIR /app

# Copia código fuente
COPY . .

# Instala dependencias y construye
RUN pnpm install --frozen-lockfile && pnpm run build

# Expone puerto de n8n
EXPOSE 5678

# Comando de arranque
CMD ["pnpm", "start"]
