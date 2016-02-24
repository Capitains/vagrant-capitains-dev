# Vagrant Capitains Development Environment

## Prerequisites:

* [Vagrant](https://www.vagrantup.com/downloads.html)
* [Virtual Box](https://www.virtualbox.org/wiki/Downloads)
* an ssh client (on Windows you can try [Putty](https://www.vagrantup.com/docs/getting-started/)


## Installation:

```
git clone https://github.com/PerseusDL/vagrant-capitains-dev
```

You will need to edit a few things in the Vagrant file for your environment:

1. Set path to your local clone of the PerseusDL canonical repos. These are the lines that need to be changed:

```
  config.vm.synced_folder "/home/user/workspace/canonical-latinLit", "/vagrant_data/latinLit"
  config.vm.synced_folder "/home/user/workspace/canonical-greekLit", "/vagrant_data/greekLit"
```

Replace `/home/user/workspace/canonical-greekLit` to the path to your local clone of the canonical-greekLit repo.

Replace `/home/user/workspace/canonical-latinLit` to the path to your local clone of the canonical-latinLit repo.

2. You may also need to change local port mappings and network card settings. Instructions are provided in the Vagrantfile

## Run the Apps

On the host machine:

```
vagrant up
vagrant ssh
```

On the VM:

```
/vagrant/run-all.sh
```

If all works, you should be able to access Nemo in your browser at http://localhost:8100 with the contents of canonical-latinLit and canonical-greekLit repositories loaded.

## Troubleshooting


## Customizations

