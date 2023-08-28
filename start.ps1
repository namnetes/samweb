# Démarrer l'application Flask (assurez-vous que la commande est correcte)
Start-Process -NoNewWindow -FilePath "python" -ArgumentList "app.py"

# Attendre un court instant pour que Flask démarre complètement
Start-Sleep -Seconds 3

# Démarrer BrowserSync avec le fichier de configuration
Start-Process -NoNewWindow -FilePath "cmd.exe" -ArgumentList @("/C", "'browser-sync.cmd start --config bs-config.js'") 