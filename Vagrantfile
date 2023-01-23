

# Virtual Box
# --------------------------------------------------------------
# VIRTUALBOX
Vagrant.configure("2") do |config|

  #MONGO DB CONFIG

  config.vm.define "mongodb" do |mongodb|
  mongodb.vm.box = "generic/ubuntu2010"
  mongodb.vm.network  "private_network", ip: "192.168.56.20"
  # mongodb.vm.provider "virtualbox" do |vb|
   mongodb.vm.synced_folder "env/mongodb/", "/home/vagrant/env"
   mongodb.vm.provision "shell", path: "env/mongodb/script.sh"
 #  end
 end

#NODE APP CONFIG
config.vm.define "node-app" do |node|
  node.vm.box = "generic/ubuntu2010"
  node.hostmanager.enabled = true
  node.hostmanager.manage_host = true
  node.vm.network "private_network", ip: "192.168.56.10"
  node.hostmanager.aliases = %w(nology.training www.nology.training)
  node.vm.synced_folder "app/", "/home/vagrant/app/"
  node.vm.synced_folder "env/", "/home/vagrant/env"
  node.vm.provider "virtualbox" do |vb|
  end
  node.vm.provision "shell", inline: "echo 'export DB_PATH=192.168.56.20' >> /etc/profile.d/myvars.sh", run: "always"
  node.vm.provision "shell", path: "env/nodeapp/script.sh"
end
end
