# Vagrant Capitains Development Environment

## Prerequisites:

* [Vagrant](https://www.vagrantup.com/downloads.html)
* [Virtual Box](https://www.virtualbox.org/wiki/Downloads)
* an ssh client 
    * comes with OS/X and Linux. On Windows you can try [Putty](https://www.vagrantup.com/docs/getting-started/)

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

The vagrant ssh command will put you into the guest VM.

On the VM:

```
/vagrant/run-all.sh
```

If all works, you should be able to access Nemo in your browser at [http://localhost:8100](http://localhost:8100) with the contents of canonical-latinLit and canonical-greekLit repositories loaded. It may take a few minutes for the full repo to load.

When you are done testing, leave the guest VM:

```
exit
```

You can return to it at any time by typing

```
vagrant ssh
```

When you are done using the VM, it's a good idea to shut it down cleanly.

On the host sytem:

```
vagrant halt
```

And if you are really done, go ahead and remove it from your system:

On the host sytem:

```
vagrant destroy
```

## Troubleshooting

### Logs

Logs can be found on the guest machine at

```
/home/vagrant/flask-capitains-nemo/nemo.log
/home/vagrant/Nautilus/nautilus.log
```

These contain the console ouput from the Nemo and Nautilus and are the first place to check if the application is not repsonding.

If you want to watch them while you are using the app you can do the following

```
tail -f /home/vagrant/flask-capitains-nemo/nemo.log
```

or 
```
tail -f /home/vagrant/Nautilus/nautilus.log
```

## Customizations

