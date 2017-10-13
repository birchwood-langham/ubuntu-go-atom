# Ubuntu Go development container with Atom editor

Based on the official Ubuntu 16.04, this image installs Go 1.9.* and Atom 1.21.* and additonal go packages required by the (Atom Go-Plus plugin)[https://atom.io/packages/go-plus] and the (Atom Go Debug plugin)[https://atom.io/packages/go-debug] along with powerline, powerline fonts and vim plugins

## Instructions

### Linux

To launch this container, use the atom-docker script provided to launch the Atom editor

### MacOS

For MacOS the procedure is slightly different, the atom-docker-mac script will launch the application for you once you're ready.

Unfortunately, there are a number of pre-requisite steps you will need to undertake before the scipt will work correctly.

1. As this Docker container is Linux based, in order to display the application, you will need to have a X11 service installed in order to launch a GUI application
2. XQuartz can provide an X11 service and you can install it using homebrew with ```brew cask install xquartz```
3. After you install, launch Quartz using ```open -a XQuartz``` and then check the Security tab and make sure the **Allow connections from network clients** option is checked

Once you have done that, then running the script atom-docker-mac should launch an XQuartz session along with the Atom editor from the container


## Exposed volumes

The script will map the folder $HOME/develop/go and $HOME/.atom-docker folder from your host machine to the relevant folders in the container.

With regards to the $HOME/develop/go path, this will become your $GOPATH location on the container. The $HOME/.atom-docker will map to the $HOME/.atom folder so that you can change your atom preferences and have them persist, as well as installing plugins and making sure that they work properly.

## Change Log

2017-10-13: Updated Atom and Go versions
=======
