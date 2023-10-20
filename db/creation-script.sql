/* Création d'une nouvelle base de données qui sera utilisée par "wordpress" */
create database wordpress;

/* Utilisation de la base de données nouvellement créée **/
use wordpress;

/* Création d'un utilisateur de la base de données wordpress */
/* Attention, l'utilisation peut se connecter à partir de n'importe où (paramètre : @'%') */
CREATE USER 'wordpress_user'@'%' IDENTIFIED BY 'megasecretpassword';
/* Ajout de tous les permissions sur l'utilisateur nouvellement créé */
GRANT ALL PRIVILEGES ON *.* TO 'wordpress_user'@'%' WITH GRANT OPTION;

/* Suppression d'un proxy superflu */
DELETE FROM mysql.proxies_priv WHERE Host != "localhost"
