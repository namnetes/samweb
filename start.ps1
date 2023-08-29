# Activez l'environnement virtuel
. ./.venv/bin/activate

# Lancez l'application Flask
python ./app.py &

# Récupérer les PID des instances Python attachées à app.py
$pids = Get-Process | Where-Object {$_.Path -eq "python ./app.py"} | Select-Object -ExpandProperty Id

# Afficher les PID
Write-Host "Voici le PID de l'instance Python attachée à app.py : $pids"

# Attendre un court instant pour que Flask démarre complètement
Start-Sleep -s 3

# Lancez BrowserSync avec son fichier de configuration
Start-Process -FilePath "browser-sync" -ArgumentList "--config ./bs-config.js"

# Démarrez le navigateur par défaut pour ouvrir un nouvel onglet sur l'url localhost:3000
if ([System.Environment]::GetEnvironmentVariable("BROWSER", "Machine")) {
    Start-Process -FilePath "$env:BROWSER" -ArgumentList "http://localhost:3000"
} else {
    Start-Process -FilePath "explorer.exe" -ArgumentList "http://localhost:3000"
}
