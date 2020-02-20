# Motd banner

## Informations

Remplacer la bannière statique motd (affichée lors d'une connexion SSH) de Linux par des informations contextuelles.

Le répertoire **update-motd.d** contient les fichiers motd de remplacement. Ces fichiers sont des exemples, il existe d'autres possibilités pour afficher d'avantages d'informations. Les fichiers sont des scripts bash. 

Les fichiers sont fonctionnels et testés sous Debian.

## Déploiement

1. Manuel

Le répertoire **update-motd.d** est à placer dans le répertoire **/etc**.
Le fichier **/etc/motd** est à supprimer, ou déplacer.  

Effectuer l'opération inverse pour revenir à l'état d'origine.

2. Automatique

Le script **deploy_new_motd.sh** permet d'utiliser les fichiers présents dans ce repository git 

```
git clone http://git.antonin.io/antonin/config_files.git
cd config_files
mv motd_banner /tmp/ && rm -rf * && mv /tmp/motd_banner .

```

La dernière ligne de la bannière montre le dernier accès SSH au serveur. Cette ligne peut être supprimée en passant les paramètres **PrintMotd** et **PrintLastLog**  à **no** dans le fichier **/etc/ssh/sshd_config**.

Penser à supprimer le fichier **/etc/motd** sur votre machine, ou à le nommer différemment pour ne plus afficher ce message lors d'une connexion SSH.
