#!/home/galan/workspace/samweb/.venv/bin/python3
# -*- coding: utf-8 -*-

# Importer les modules Flask et Flask-Bootstrap
from flask import Flask, render_template
from flask_bootstrap import Bootstrap

# Créer une instance de l'application Flask
app = Flask(__name__)

# Initialiser Flask-Bootstrap avec l'application Flask
bootstrap = Bootstrap(app)

# Définir une route pour la page d'accueil
@app.route('/')
def home():
    return render_template('home.html')

# ... ajouter d'autres routes et fonctions de vue ...

# Lancer l'application
if __name__ == '__main__':
    app.run(debug=True)
