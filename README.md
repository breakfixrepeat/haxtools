# Haxtools

***A highly customised CTF, bounty hunting & penetration testing environment based on the official kali-rolling docker image.***

Haxtools provides a wrapper for the [haxtools-docker](https://github.com/breakfixrepeat/haxtools-docker) image (and any other docker image for that matter) by sourcing itself within your shells rc file.

Installation is straightforward and doesn't require any prior experience with docker (though this will help if you wish to further customise Haxtools or add your own custom commands).

## Get Started

Clone this repository:
```
git clone https://github.com/breakfixrepeat/haxtools ~/.haxtools
```

Add the following to your shells RC file:
```
HAXTOOLS_DIR=$HOME/.haxtools
if [[ -s $HAXTOOLS_DIR/.haxrc ]]; then
  source $HAXTOOLS_DIR/.haxrc
fi
```

## Usage

Easy, just run:

`hax`

To launch the haxtools container within your terminal.

From there you can customise the shell environment to your liking. The containers `/home/hax` directory is mounted to the `$HOME/.haxtools/home` directory on your host.

## Customise

Any changes to the Haxtools home directory are persistent, as by default the docker `/home/hax` directory is mounted in `.haxtools/home`

Add additional volume mounts to the `HAXTOOLS_VOLUMES` environment variable within the `.haxrc` file to mount additional host directories in the container at runtime.

# Contributions & Requests

Requests for tools and contributions to improve haxtools and the associated docker container are welcome.
