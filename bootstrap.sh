echo "@edge http://nl.alpinelinux.org/alpine/edge/main" >> /etc/apk/repositories
apk add --upgrade apk-tools@edge

apk update

apk upgrade

apk add lighttpd
apk add python3 python3-dev py-pip
apk add git
apk add g++ gcc make
apk add rrdtool rrdtool-dev rrdtool-utils
apk add libxml2 libxml2-dev libxml2-utils
apk add libxslt libxslt-dev
apk add linux-headers
apk add tree

cat > /home/vagrant/.vimrc << "EOF"
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set showtabline=2
set noshowmode
EOF

adduser www -DH

cd /var/www
git clone https://github.com/OpenWeek/data-logger
chown vagrant -R data-logger

# python2 will be deprecated in 2020 => change all links to python2 by links to python3
rm /usr/bin/python
ln -s /usr/bin/python3 /usr/bin/python

rm /usr/bin/pip
ln -s /usr/bin/pip3 /usr/bin/pip

pip install --upgrade pip

cd data-logger
git pull origin master

pip install -r requirements.txt
