#!/bin/bash

echo "[Ashley] Iniciando push automático a GitHub..."
echo "=============================="
echo "🔁 Iniciando Ashley Bot Core..."
echo "🧠 Ejecutando tareas básicas..."
echo "=============================="

# Configurar identidad
git config --global user.name "Ashley Bot"
git config --global user.email "bot@ashley.ai"

# Inicializar git si no está iniciado
if [ ! -d .git ]; then
  git init
fi

# Agregar y commitear si hay cambios
git add .
git commit -m "Commit automático de Ashley" || echo "⚠️ Nada que commitear"

# Agregar remote si no está
git remote | grep origin > /dev/null
if [ $? -ne 0 ]; then
  git remote add origin "https://x-access-token:${GITHUB_TOKEN}@github.com/${GITHUB_REPOSITORY}.git"
fi

# Push con autenticación del bot
git push origin HEAD

# Listar archivos
echo "📁 Archivos en el repo:"
ls -la

echo "[Ashley] Push finalizado correctamente."
echo "✅ Ashley Bot finalizó correctamente."
