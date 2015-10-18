# -*- mode: ruby -*-
# vi: set ft=ruby :
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |c|
  c.vm.provider "virtualbox" do |vb|
    vb.customize ["modifyvm", :id, "--memory", "1048"]
    vb.customize ["modifyvm", :id, "--cpus", "1"]
    vb.customize ["modifyvm", :id, "--ioapic", "on"]
  end

   c.vm.define :neo4j do |neo4j|
    neo4j.vm.box = "ubuntu/trusty64"
    neo4j.vm.network :private_network, ip: "192.168.99.15"
    neo4j.ssh.forward_agent = true
    neo4j.vm.hostname = "neo4j.zenf.io"
    neo4j.vm.synced_folder "files/", "/files" 
    neo4j.vm.provision "shell", path: "bootstrap.sh"

    neo4j.vm.provision "shell", inline: <<-SHELL
        sudo apt-get install -y unattended-upgrades 
        sudo apt-get install -y software-properties-common
    SHELL
   end

   c.vm.define :db do |db|
    db.vm.box = "ubuntu/trusty64"
    db.vm.network :private_network, ip: "192.168.99.16"
    db.ssh.forward_agent = true
    db.vm.hostname = "db.zenf.io"
    db.vm.synced_folder "files/", "/files" 
    db.vm.provision "shell", path: "bs-rethink.sh"

    db.vm.provision "shell", inline: <<-SHELL
        sudo apt-get install -y unattended-upgrades 
        sudo apt-get install -y software-properties-common
    SHELL
   end
end
