Vagrant.configure("2") do |config|
	config.vm.box = "acme-powerplant"
	config.vm.box_url = "http://files.vagrantup.com/precise64.box"
	config.vm.hostname  = "acme-powerplant.local"
	
	config.vm.network :forwarded_port, guest: 80, host: 8881
	config.vm.network :private_network, ip: "192.168.56.101"
	
	config.vm.provision :puppet do |puppet|
		puppet.manifests_path = "puppet/manifests"
		puppet.manifest_file = "vagrant.pp"
		puppet.module_path = "puppet/modules"
	end
end
