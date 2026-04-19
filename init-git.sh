#!/bin/bash
# Initialise le repo local et push vers GitHub.
# À exécuter UNE SEULE fois, depuis le dossier chr-helpcenter-repo.
#
# Usage :
#   cd "/Users/fix/Documents/Claude/Projects/CHR Solution/chr-helpcenter-repo"
#   bash init-git.sh

set -e

cd "$(dirname "$0")"

if [ -d .git ]; then
  echo "❌ Un dossier .git existe déjà — repo déjà initialisé."
  echo "   Pour pousser une modif : git add . && git commit -m 'msg' && git push"
  exit 1
fi

echo "→ git init"
git init
git branch -M main

echo "→ premier commit"
git add .
git commit -m "Initial commit — CHR Solution Help Center"

echo "→ remote add origin"
git remote add origin https://github.com/FiiiiixFr/chr-helpcenter.git

echo "→ git push -u origin main"
echo ""
echo "Si Git te demande ton login/mot de passe :"
echo "  Username : ton login GitHub (FiiiiixFr)"
echo "  Password : un Personal Access Token (PAT) — pas ton mot de passe"
echo "  → Créer un PAT : https://github.com/settings/tokens"
echo "    cocher 'repo' (full control) et valider"
echo ""
git push -u origin main

echo ""
echo "✅ Repo initialisé et pushé"
echo "   https://github.com/FiiiiixFr/chr-helpcenter"
echo ""
echo "Pour les modifs suivantes :"
echo "  cd '$(pwd)'"
echo "  git add . && git commit -m 'update' && git push"
