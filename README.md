# Haxtools

***A highly customised CTF, bounty hunting & penetration testing environment based on the official kali-rolling docker image.***

Haxtools provides a wrapper for the [haxtools-docker](https://github.com/breakfixrepeat/haxtools-docker) image (and any other docker image for that matter) by sourcing itself within your shells rc file.
Running containerised commands from within your shell is then as simple as appending 'd' to the name of the command you wish to run, e.g:

`dzsh`

Will launch a shiny new z shell instance running within your hosts shell. From there you can access any of the tools bundled with haxtools with their normal names.

## Get Started

Simply run:

`source <(curl -s https://raw.githubusercontent.com/breakfixrepeat/haxtools/master/install.sh)`

 This will clone the haxtools repo to $HOME/.haxtools along with several other dependencies...

![Imgur](https://i.imgur.com/WpJrfiY.gif)

 Docker/Podman will be installed on supported OS's (Ubuntu, Debian & Fedora currently), if not already installed.

## Usage

Predefined commands are located in the `.haxtools/.tools` directory where you can add your own. As long as you prepend them with `.cmd_` they will be sourced automatically when you next launch your shell.

Prefer a GUI based terminal session? Easy, just run:

`hax`

To launch the haxtools container within a terminator shell.

From there you can customise the shell environment to your liking. The containers `/root` directory is mounted to the `$HOME/.haxtools/home` directory on your host.

Installation is straightforward and doesn't require any prior experience with docker (though this will help if you wish to further customise Haxtools or add your own custom commands).

## Customise

Any changes to the Haxtools home directory are persistent, as by default the docker `/root` directory is mounted in `.haxtools/home`

***Note*** *- Files created by the docker container are owned by root, it's easier to make changes from within the docker environment as opposed to changing configs from your host.*

Add additional volume mounts to the `HAXTOOLS_VOLUMES` environment variable within the `.haxrc` file to mount additional folders in the container at runtime.

# Contributions & Requests

Requests for tools and contributions to improve haxtools and the associated docker container are welcome.
