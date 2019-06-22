# vagrant-rpi

Ce repo reprend les fichiers nécessaires à la création d'une machine virtuelle servant d'environnement de développement pour les projets basé sur la plateforme Raspberry Pi dans le cadre de l'OpenWeek.

## Prérequis

Il est nécessaire de disposer d'une installation de [VirtualBox](https://www.virtualbox.org/) et de [Vagrant](https://www.vagrantup.com/) fonctionnelle afin de pouvoir utiliser le contenu de ce repo.

## Installation

```
git clone https://github.com/OpenWeek/vagrant-rpi

cd vagrant-rpi

vagrant up
```
**_That's it_**

## Usage

- Le wiki du projet est disponible localement dans ```/home/vagrant/data-logger.wiki```

- Pour lancer le serveur HTTP :

```
cd /var/www/data-logger

lighttpd -f wsgi_server/lighttpd.conf -D
```

> Le serveur HTTP tourne à l'adresse suivante : [localhost:8080](http://localhost:8080)

- Il est possible d'ouvrir un terminal dans la VM via `vagrant ssh`

- Si vous souhaitez pouvoir utiliser votre éditeur de texte / IDE préféré, vous pouvez monter le dossier de l'application en dehors de la VM à l'aide du programme ```sshfs```.

> Utilisation : 

```
sshfs vagrant@0.0.0.0:/var/www/data-logger <mountpoint sur votre fs> -p 2222
```

> Le mot de passe demandé est `vagrant`.
> **!!! PENSEZ A CHANGER CE MDP PAR DEFAUT PAR UN AUTRE DE VOTRE CHOIX !!!**

> Pour démonter le dossier venant de la VM :

```
umount <mountpoint sur votre fs>
```

**Attention**, en vue d'utiliser `git` correctement, il est important de setup les données utilisateurs (lorsque vous avez ouvert un terminal dans la VM après `vagrant ssh`).

```
git config --global user.name "<user_name>"

git config --global user.email "<user_email>"
```

_Avant de détruire votre VM avec `vagrant destroy` ou de l'arrêter avec `vagrant halt`, n'oubliez pas de push votre code vers votre repo distant ! Sinon, perte de travail garantie._


