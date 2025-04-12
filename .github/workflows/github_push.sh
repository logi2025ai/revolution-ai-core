#!/bin/bash

echo "[Ashley] Iniciando push automático a GitHub..."
echo "=============================="
echo "🔁 Iniciando Ashley Bot Core..."
echo "🧠 Ejecutando tareas básicas..."
echo "=============================="

# Configurar identidad del bot
git config --global user.name "Ashley Bot"
git config --global user.email "bot@ashley.ai"

# Inicializar Git si no está
if [ ! -d .git ]; then
  git init
fi

# Agregar todos los archivos y hacer commit si hay cambios
git add .
git commit -m "Commit automático de Ashley" || echo "⚠️ Nada que commitear"

# Configurar el remoto si no existe
git remote | grep origin > /dev/null
if [ $? -ne 0 ]; then
  git remote add origin "https://x-access-token:${GITHUB_TOKEN}@github.com/${GITHUB_REPOSITORY}.git"
fi

# Hacer push al repositorio
git push origin HEAD

# Mostrar archivos en el repositorio
echo "📁 Archivos en el repo:"
ls -la

echo "[Ashley] Push finalizado correctamente."
echo "✅ Ashley Bot finalizó correctamente."
