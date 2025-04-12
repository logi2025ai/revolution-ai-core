#!/bin/bash

echo "[Ashley] Iniciando push automático a GitHub..."

git config --global user.name "AshleyAI"
git config --global user.email "ashley@revolutionai.bot"

git add .
git commit -m "Commit automático de Ashley"
git push origin main

echo "[Ashley] Push finalizado correctamente."
