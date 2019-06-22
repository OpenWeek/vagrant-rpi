# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure("2") do |config|
  # The most common configuration options are documented and commented below.
  # For a complete reference, please see the online documentation at
  # https://docs.vagrantup.com.

  # Every Vagrant development environment requires a box. You can search for
  # boxes at https://atlas.hashicorp.com/search.
  config.vm.box = "generic/alpine38"
  config.vm.network :forwarded_port, guest:8080, host:8080
  #config.vm.synced_folder ".", "/vagrant", type: "virtualbox"
  config.vm.provision :shell, path:"bootstrap.sh"

  config.vm.provider "virtualbox" do |vb|
    vb.name = "OpenWeek_RPI"
    vb.customize ["modifyvm", :id, "--memory", "2048"]
  end

end
