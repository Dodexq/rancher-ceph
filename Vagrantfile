Vagrant.configure("2") do |config|
  
  (1..3).each do |i|
    config.vm.define "k8s-#{i}" do |server|
      server.vbguest.auto_update = false if Vagrant.has_plugin?('vagrant-vbguest')
      server.vm.box = "ubuntu/bionic64"
      server.vm.hostname = "k8s-#{i}"  
      server.vm.network "public_network", ip: "192.168.0.20#{i}", bridge: "wlo1"
      server.vm.provider "virtualbox" do |vb|
        vb.memory = "2048"
        vb.name = "k8s-#{i}"
        vb.cpus = "2"
      end
      server.vm.provision "shell", inline: <<-SHELL
      cp /vagrant/provision/authorized_keys /root/.ssh
      SHELL
    end
  end
end