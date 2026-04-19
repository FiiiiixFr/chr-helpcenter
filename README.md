# CHR Solution — Help Center

Centre d'aide de CHR Solution, servi sur https://support.chrsolution.app/

Le fichier `index.html` est la source de vérité — toute modification à ce fichier est pushée sur GitHub et pullée automatiquement par OVH via son intégration Git Multisite.

## Workflow
1. Modifier `index.html` localement
2. `git add . && git commit -m "update" && git push`
3. OVH pull automatiquement (quelques secondes) → mis à jour sur `support.chrsolution.app`
4. Cache-busting Bubble 5 min → utilisateurs voient la nouvelle version sans action

## Hébergement
- OVH mutualisé Perso, cluster 129, dossier `/support`
- SSL Let's Encrypt auto-renouvelé
