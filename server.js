const express = require('express');
const path = require('path');

const app = express();
const PORT = process.env.PORT || 89;

// Servir les fichiers statiques
app.use(express.static(path.join(__dirname, 'public')));

// Route principale
app.get('/', (req, res) => {
  res.sendFile(path.join(__dirname, 'public', 'index.html'));
});

// Démarrer le serveur
app.listen(PORT, '0.0.0.0', () => {
  console.log(`Dashboard démarré sur http://0.0.0.0:${PORT}`);
});

