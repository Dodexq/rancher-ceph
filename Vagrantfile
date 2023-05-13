Vagrant.configure("2") do |config|
  
  config.vm.define "k8s-1" do |server|
    server.vm.box = "ubuntu/bionic64"
    server.vm.hostname = "k8s-1"  
    server.vm.network "public_network", ip: "192.168.0.211"

  # shell > "VAGRANT_EXPERIMENTAL=disks vagrant up"
  #  server.vm.disk :disk, size: "40GB", name: "extra_storage"

    server.vm.provider "virtualbox" do |vb|
      vb.memory = "4096"
      vb.name = "k8s-1"
      vb.cpus = "1"
  end
  #server.vm.provision "shell", path: "./provision.sh"
  end

  config.vm.define "k8s-2" do |server|
    server.vm.box = "ubuntu/bionic64"
    server.vm.hostname = "k8s-2"  
    server.vm.network "public_network", ip: "192.168.0.212"

  # shell > "VAGRANT_EXPERIMENTAL=disks vagrant up"
  #  server.vm.disk :disk, size: "40GB", name: "extra_storage"

    server.vm.provider "virtualbox" do |vb|
      vb.memory = "4096"
      vb.name = "k8s-2"
      vb.cpus = "1"
  end
  #server.vm.provision "shell", path: "./provision.sh"
  end
  
  config.vm.define "k8s-3" do |server|
    server.vm.box = "ubuntu/bionic64"
    server.vm.hostname = "k8s-3"  
    server.vm.network "public_network", ip: "192.168.0.213"

  # shell > "VAGRANT_EXPERIMENTAL=disks vagrant up"
  #  server.vm.disk :disk, size: "40GB", name: "extra_storage"

    server.vm.provider "virtualbox" do |vb|
      vb.memory = "4096"
      vb.name = "k8s-3"
      vb.cpus = "1"
  end
  #server.vm.provision "shell", path: "./provision.sh"
  end

  config.vm.define "node-1" do |server|
    server.vm.box = "ubuntu/bionic64"
    server.vm.hostname = "node-1"  
    server.vm.network "public_network", ip: "192.168.0.214"

  # shell > "VAGRANT_EXPERIMENTAL=disks vagrant up"
  #  server.vm.disk :disk, size: "40GB", name: "extra_storage"

    server.vm.provider "virtualbox" do |vb|
      vb.memory = "2048"
      vb.name = "node-1"
      vb.cpus = "1"
  end
  #server.vm.provision "shell", path: "./provision.sh"
  end

   config.vm.define "node-2" do |server|
    server.vm.box = "ubuntu/bionic64"
    server.vm.hostname = "node-2"  
    server.vm.network "public_network", ip: "192.168.0.215"

  # shell > "VAGRANT_EXPERIMENTAL=disks vagrant up"
  #  server.vm.disk :disk, size: "40GB", name: "extra_storage"

    server.vm.provider "virtualbox" do |vb|
      vb.memory = "2048"
      vb.name = "node-2"
      vb.cpus = "1"
  end
  #server.vm.provision "shell", path: "./provision.sh"
  end

  config.vm.define "node-3" do |server|
    server.vm.box = "ubuntu/bionic64"
    server.vm.hostname = "node-3"  
    server.vm.network "public_network", ip: "192.168.0.216"

  # shell > "VAGRANT_EXPERIMENTAL=disks vagrant up"
  #  server.vm.disk :disk, size: "40GB", name: "extra_storage"

    server.vm.provider "virtualbox" do |vb|
      vb.memory = "2048"
      vb.name = "node-3"
      vb.cpus = "1"
  end
  #server.vm.provision "shell", path: "./provision.sh"
  end
end