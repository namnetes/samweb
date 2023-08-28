module.exports = {
    proxy: 'localhost:5000',                      // url Flask/Python
    files: ['./templates/**/*', './static/**/*'], // fichier à surveiller pour le rechargement dynamique
    open: false,                                  // empêcher l'ouverture automatique du navigateur
};