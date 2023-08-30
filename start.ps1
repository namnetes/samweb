# Activez l'environnement virtuel 
.\.venv\Scripts\activate.bat

# Lancez l'application Flask
Start-Process -NoNewWindow python -ArgumentList "./app.py" 

# Récupérer les PID des instances Python attachées à app.py
$pids = Get-Process | Where-Object {$_.Path -eq "python ./app.py"} | Select-Object -ExpandProperty Id

# Afficher les PID
Write-Host "Voici le PID de l'instance Python attachée à app.py : $pids"

# Attendre un court instant pour que Flask démarre complètement
Start-Sleep -s 3

# Lancez BrowserSync avec son fichier de configuration
Start-Process -NoNewWindow -FilePath "cmd.exe" -ArgumentList "/c browser-sync start --config .\bs-config.js"

# Démarrez le navigateur par défaut pour ouvrir un nouvel onglet sur l'url localhost:3000
Start-Process -FilePath "C:\Program Files (x86)\Microsoft\Edge\Application\msedge.exe" -ArgumentList "http://localhost:3000" -NoNewWindow
