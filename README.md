# vagrant-rpi

Ce repo reprend les fichiers nécessaires à la création d'une machine virtuelle servant d'environnement de développement pour le projet de [station météo sur RaspberryPi](https://github.com/OpenWeek/ow-rpi)

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

Le serveur HTTP tourne à l'adresse suivante : [localhost:8080](http://localhost:8080)

Il est possible d'ouvrir un terminal dans la VM via `vagrant ssh`

**Attention**, en vue d'utiliser `git` correctement, il est important de setup les données utilisateurs.

```
git config --global user.name "<user_name>"

git config --global user.email "<user_email>"
```


