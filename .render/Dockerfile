FROM node:20

# Instala PNPM
RUN npm install -g pnpm

# Crea carpeta y copia el código
WORKDIR /app
COPY . .

# Instala dependencias y construye
RUN pnpm install --frozen-lockfile && pnpm run build

# Expone el puerto de n8n
EXPOSE 5678

# Comando de arranque
CMD ["pnpm", "start"]
