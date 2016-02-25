# Vagrant CapiTainS Development Environment

## Prerequisites:

* [Vagrant](https://www.vagrantup.com/downloads.html)
* [Virtual Box](https://www.virtualbox.org/wiki/Downloads)
* an ssh client 
    * comes with OS/X and Linux. On Windows you can try [Putty](https://www.vagrantup.com/docs/getting-started/)

## Installation:

```
git clone https://github.com/Capitains/vagrant-capitains-dev
```

1. Open the Vagrant file in the cloned copy of the vagrant-capitains-dev repository.  The following are example command-line instructions, but you can also navigate there in your File Explorer/Finder and use whatever text editor you are comfortable with.

On OS/X or Linux:

```
cd vagrant-capitains-dev
vi Vagrantfile
```

On Windows

```
cd c:\\Users\My Documents\JohnSmith\vagrant-capitains-dev
notepad Vagrantfile
```


2. In the text editor with the Vagrant file open, s et path to your local clone of the PerseusDL canonical repos. These are the lines in the Vagrantfile that need to be changed:

    ```
    config.vm.synced_folder "/home/user/workspace/canonical-latinLit", "/vagrant_data/latinLit"
    config.vm.synced_folder "/home/user/workspace/canonical-greekLit", "/vagrant_data/greekLit"
    ```

    Replace `/home/user/workspace/canonical-greekLit` to the path to your local clone of the canonical-greekLit repo.

    Replace `/home/user/workspace/canonical-latinLit` to the path to your local clone of the canonical-latinLit repo.

   (It can be used with other Capitains-compliant repositories too, the run script is just setup for these for
    convenience)
    
2. You may also need to change local port mappings and network card settings. Instructions are provided in the Vagrantfile

## Run the Apps

On the host machine __from within the local cloned copy of the vagrant-capitains-dev repository__:

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

### Trouble getting Vagrant and Virtual box to work

[enabling virtualization on Lenovo laptops](http://amiduos.com/support/knowledge-base/article/enabling-virtualization-in-lenovo-systems)


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

