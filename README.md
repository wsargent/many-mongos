## Many-Mongos Cookbook Collection
This is a collection of wrappers for a mongodb install. Someone had a need for separate installs of mongo.
So I helped with a Berks wrapper.

## Requirements
This project requires an internet connection and Berkshelf to resolve dependencies. 

It also requires Vagrant if you want to pop up in a vagrant box.
## Usage

`mkdir mongos`
`cd mongos`
`git clone <this repo> many-mongos`

Create a Berksfile:

```text
cookbook "mongo20", path: "many-mongos/mongo20"
cookbook "mongo24", path: "many-mongos/mongo24"
```

Create a Vagrantfile:

```
Vagrant.configure("2") do |config|
  config.berkshelf.enabled = true

  config.vm.box = "precise64"

  config.vm.box_url = "http://files.vagrantup.com/precise64.box"

  config.vm.provision :chef_solo do |chef|
    chef.add_recipe "mongo20"
  end
end
```

In the root of the project:

`berks install`  

`vagrant up`

Author:: Sascha Bates
