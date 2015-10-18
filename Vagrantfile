# -*- mode: ruby -*-
# vi: set ft=ruby :
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |c|
  c.vm.provider "virtualbox" do |vb|
    vb.customize ["modifyvm", :id, "--memory", "1048"]
    vb.customize ["modifyvm", :id, "--cpus", "1"]
    vb.customize ["modifyvm", :id, "--ioapic", "on"]
  end

   c.vm.define :dev do |dev|
    dev.vm.box = "ubuntu/trusty64"
    dev.vm.network :private_network, ip: "192.168.99.15"
    dev.ssh.forward_agent = true
    dev.vm.hostname = "neo4j.zenf.io"
    dev.vm.synced_folder "files/", "/files" 
    dev.vm.provision "shell", path: "bootstrap.sh"

    dev.vm.provision "shell", inline: <<-SHELL
        sudo apt-get install -y unattended-upgrades 
        sudo apt-get install -y software-properties-common
    SHELL
   end
end
