# Utiliser Node.js 20.19.4 comme image de base
FROM node:20.19.4-alpine

# Définir le répertoire de travail
WORKDIR /app

# Installer pnpm globalement
RUN npm install -g pnpm

# 🔻 Copier package.json ET pnpm-lock.yaml
COPY package.json pnpm-lock.yaml ./

# Installer les dépendances
# ✅ Le lockfile est maintenant présent → --frozen-lockfile fonctionnera
RUN pnpm install --frozen-lockfile

# Copier le reste du code source
COPY . .

# Exposer le port 89
EXPOSE 89

# Créer un utilisateur non-root pour la sécurité
RUN addgroup -g 1001 -S nodejs
RUN adduser -S nextjs -u 1001

# Changer la propriété des fichiers
RUN chown -R nextjs:nodejs /app
USER nextjs

# Commande de démarrage
CMD ["node", "server.js"]
