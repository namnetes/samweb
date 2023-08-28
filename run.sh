#!/bin/bash

# Activez l'environnement virtuel
source ./.venv/bin/activate

# Lancez l'application Flask
python ./app.py &

# Récupérer les PID des instances Python attachées à app.py
pids=$(pgrep -f "app.py")

# Afficher les PID
echo "Voici Les PID des instances Python attachées à app.py : $pids"

# Attendre un court instant pour que Flask démarre complètement
sleep 3

# Lancez BrowserSync avec son fichier de configuration
browser-sync start --config ./bs-config.js

