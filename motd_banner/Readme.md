# Motd banner

## Objectif

Remplacer la bannière statique motd (affichée lors d'une connexion SSH) de Linux par des informations contextuelles.

Le répertoire **update-motd.d** contient les fichiers motd de remplacement. Ces fichiers sont des exemples, il existe d'autres possibilités pour afficher d'avantages d'informations. Les fichiers sont des scripts bash. 

Les fichiers sont fonctionnels et testés sous Debian.

## Déploiement

* **Manuel**

Le répertoire **update-motd.d** du repo est à placer dans le répertoire **/etc**.  
Le fichier **/etc/motd** du serveur est à supprimer, ou déplacer.  

Effectuer l'opération inverse pour revenir à l'état d'origine.

* **Automatique**

Exécuter les commandes suivantes pour cloner le repo, garder uniquement les fichiers nécessaires à motd.  
Le script **deploy_new_motd.sh** permet de déployer les fichiers automatiquement.  
Le script **back_old_motd.sh** permet de revenir à l'état d'origine.

```
# cloner le repo et supprimer les fichiers inutiles
git clone http://git.antonin.io/antonin/config_files.git
mv config_files/motd_banner /tmp/ && rm -rf config_files && mv /tmp/motd_banner . && cd motd_banner

./deploy_new_motd.sh
# ou
./back_old_motd.sh
```

## Informations

### SSH

La dernière ligne de la bannière montre le dernier accès SSH au serveur.  
Cette ligne peut être supprimée en passant les paramètres **PrintMotd** et **PrintLastLog**  à **no** dans le fichier **/etc/ssh/sshd_config**.