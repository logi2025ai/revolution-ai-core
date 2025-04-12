#!/bin/bash

# Configuración
GIT_USER="logi2025ai"
REPO_NAME="revolution-ai-core"
REMOTE_URL="https://github.com/$GIT_USER/$REPO_NAME.git"

# Inicializar git si no existe
if [ ! -d .git ]; then
  git init
fi

# Agregar todo
git add .

# Hacer commit
git commit -m "Primer commit: Ashley AI core listo"

# Agregar remote origin si no existe
git remote | grep origin > /dev/null
if [ $? -ne 0 ]; then
  git remote add origin "$REMOTE_URL"
fi

# Crear branch main y hacer push
git branch -M main
git push -u origin main

