// Fonction pour récupérer l'adresse IP du poste client
function obtenirAdresseIP() {
    fetch('https://api.ipify.org?format=json')
        .then(response => response.json())
        .then(data => {
            var adresseIP = data.ip;
            console.log('Adresse IP du poste client : ' + adresseIP); // Message de débogage
            document.getElementById('ip').textContent = adresseIP; // Mettre à jour l'élément HTML
        })
        .catch(error => {
            console.error('Une erreur s\'est produite lors de la récupération de l\'adresse IP :', error);
        });
}

// Fonction pour récupérer le nom d'hôte du poste client
function obtenirNomHote() {
    var nomHote = window.location.hostname;
    console.log('Nom d\'hôte du poste client : ' + nomHote); // Message de débogage
    document.getElementById('hostname').textContent = nomHote; // Mettre à jour l'élément HTML
}

// Fonction pour récupérer le nom d'utilisateur du poste client
function obtenirNomUtilisateur() {
    var username = "Nom d'utilisateur non disponible";
    if (typeof process !== 'undefined' && process.env && process.env.USER) {
        username = process.env.USER;
    }
    console.log('Nom d\'utilisateur du poste client : ' + username); // Message de débogage
    document.getElementById('username').textContent = username; // Mettre à jour l'élément HTML
}
