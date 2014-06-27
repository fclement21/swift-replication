# !/bin/bash
# supervisor
#
cd swift-replication/
sudo apt-get install -y supervisor
sudo mkdir -p /var/log/supervisor
sudo cp files/supervisord.conf /etc/supervisor/conf.d/supervisord.conf

#
# Swift configuration
# - Partially fom http://docs.openstack.org/developer/swift/development_saio.html
#

# common
sudo apt-get update && apt-get install -y swift python-swiftclient rsync

# proxy
sudo apt-get install -y swift-proxy swift-object memcached python-keystoneclient python-swiftclient swift-plugin-s3 python-netifaces python-xattr python-memcache

# storage
sudo apt-get install -y swift-account swift-container swift-object 

# not sure how valuable dispersion will be...
sudo cp files/rsyncd.conf /etc/rsyncd.conf
sudo cp files/swift.conf /etc/swift/swift.conf
sudo cp files/proxy-server.conf /etc/swift/proxy-server.conf
sudo cp files/account-server.conf /etc/swift/account-server.conf
sudo cp files/object-server.conf /etc/swift/object-server.conf
sudo cp files/container-server.conf /etc/swift/container-server.conf
sudo cp files/proxy-server.conf /etc/swift/proxy-server.conf
sudo cp files/startmain.sh /usr/local/bin/startmain.sh
sudo chmod 755 /usr/local/bin/*.sh

sudo /usr/local/bin/startmain.sh