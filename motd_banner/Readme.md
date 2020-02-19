# Motd banner

## Informations

Remplacer la bannière statique motd de Linux par des informations contextuelles.

Le répertoire **update-motd.d** contient les fichiers qui sont nécessaires à motd pour être dynamique. Ces fichiers sont des exemples, il existe d'autres possibilités pour afficher d'avantages d'informations.

Le répertoire **update-motd.d** est à placer dans le répertoire **/etc**.

Les fichiers sont fonctionnels et testés sous Debian.

## Déploiement

La dernière ligne de la bannière montre le dernier accès SSH au serveur. Cette ligne peut être supprimée en passant les paramètres **PrintMotd** et **PrintLastLog**  à **no** dans le fichier **/etc/ssh/sshd_config**.

Penser à supprimer le fichier **/etc/motd** sur votre machine, ou à le nommer différemment pour ne plus afficher ce message lors d'une connexion SSH.
