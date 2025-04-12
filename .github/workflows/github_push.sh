#!/bin/bash

echo "=============================="
echo "🔁 Iniciando Ashley Bot Core..."
echo "🧠 Ejecutando tareas básicas..."
echo "=============================="

# Configurar identidad
git config --global user.email "bot@ashley.ai"
git config --global user.name "Ashley Bot"

# Inicializar git si no está iniciado
if [ ! -d .git ]; then
  git init
fi

# Agregar todo y hacer commit si hay cambios
git add .
git commit -m "Primer commit: Ashley AI core listo" || echo "⚠️ Nada que commitear"

# Configurar remoto si no está
git remote | grep origin > /dev/null
if [ $? -ne 0 ]; then
  git remote add origin "https://x-access-token:${GITHUB_TOKEN}@github.com/${GITHUB_REPOSITORY}.git"
fi

# Hacer push
git push origin HEAD

# Mostrar archivos
echo "📁 Archivos en el repo:"
ls -la

echo "✅ Ashley Bot finalizó correctamente."
