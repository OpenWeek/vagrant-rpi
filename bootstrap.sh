echo "@edge http://nl.alpinelinux.org/alpine/edge/main" >> /etc/apk/repositories
apk add --upgrade apk-tools@edge

apk update

apk upgrade

apk add lighttpd
apk add python2 python2-dev py-pip
apk add git
apk add g++ gcc make
apk add rrdtool rrdtool-dev rrdtool-utils
apk add libxml2 libxml2-dev libxml2-utils
apk add libxslt libxslt-dev
apk add linux-headers

adduser www -DH

cd /var/www
git clone https://github.com/OpenWeek/ow-rpi
pip install --upgrade pip

cd ow-rpi
git checkout develop 
git pull origin develop

pip install -r requirements.txt

lighttpd -D -f lighttpd.conf &
