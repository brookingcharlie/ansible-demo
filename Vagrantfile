Vagrant.configure(2) do |config|
  (1..3).each do |i|
    config.vm.define "ansible-#{i}" do |c|
      c.vm.box = "ubuntu/trusty64"
      c.vm.hostname = "ansible-#{i}"
      c.vm.network "public_network"
    end
  end
end
