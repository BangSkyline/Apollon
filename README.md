# Services Dashboard - Cosmos Local

Un dashboard élégant pour accéder à vos services locaux avec une interface inspirée du système solaire, avec affichage interactif des planètes !

## 🚀 Fonctionnalités

- **Interface interactive** : Les planètes s'affichent au centre lors du survol des services
- **Navigation intuitive** avec des planètes et lunes cliquables
- **15 services locaux** supportés avec associations planétaires
- **Animations fluides** et effets visuels immersifs
- **Design responsive** adapté à tous les écrans
- **Déploiement Docker** simple et rapide

## 🪐 Services et Associations Planétaires

- **Huly** (Gestion de projets) → **Soleil**
- **OpenLDAP** (Service d'annuaire) → **Mercure**
- **Vault** (Gestionnaire de secrets) → **Vénus**
- **Qdrant** (Base de données vectorielle) → **Terre**
- **Jenkins** (CI/CD) → **Lune**
- **GLPI** (Solution ITSM) → **Mars**
- **Jupiter** (Service générique) → **Jupiter**
- **PrestaShop** (E-commerce) → **Saturne**
- **n8n** (Automatisation des workflows) → **Neptune**
- **OpenWebUI** (Interface IA moderne) → **Uranus**
- **Keycloak** (Gestion d'identité et SSO) → **Pluton**
- **PrivacyIDEA** (Authentification 2FA) → **Europe**
- **Prometheus** (Monitoring et métriques) → **Encelade**
- **Grafana** (Visualisation de données) → **Triton**
- **NPM** (reverse-proxy) → **Titan**

## Installation et déploiement

### Prérequis

- Node.js 20.19.4 ou supérieur
- pnpm
- Docker et Docker Compose (pour le déploiement conteneurisé)

### Déploiement local

```bash
# Cloner le projet
git clone <repository-url>
cd services-dashboard

# Installer les dépendances
pnpm install

# Démarrer le serveur
pnpm start
```

L'application sera accessible sur `http://localhost:3000`

### Déploiement Docker

```bash
# Construire et démarrer avec Docker Compose
docker-compose up -d

# Ou construire l'image manuellement
docker build -t apollon:V4 .
docker run -p 89:89 services-dashboard
```

### Configuration

Les URLs des services sont configurées dans le fichier `public/index.html`. Modifiez les liens selon votre configuration :

```javascript
// Exemple de modification d'URL
onclick="openService('https://votre-service.cosmos')"
```
## Personnalisation

### Ajouter un nouveau service

1. Ajoutez un nouvel input radio et label dans `index.html`
2. Créez la section correspondante dans le système solaire
3. Ajoutez les styles CSS appropriés dans `style.css`
4. Configurez l'URL du service

### Modifier les couleurs

Les couleurs des services sont définies dans `style.css` avec des dégradés CSS. Chaque service a sa propre palette de couleurs.

## Technologies utilisées

- **Frontend** : HTML5, CSS3, JavaScript
- **Backend** : Node.js, Express
- **Gestionnaire de paquets** : pnpm
- **Conteneurisation** : Docker
- **Polices** : Azonix, Montserrat

## Licence

MIT License

