# Home Manager

## Hook

- How many of you have a corporate laptop
- How much time did it take you to set up your laptop (installed applications, dotfiles, theming, etc)
- There is a better way...

- There will be a demo later, spin up a container if you want to follow along

## Background: On Nix

### nix

- packages are stored in a unique path (based on the hash of all the inputs, build script, etc) in a place called the "nix store"
- these packages are then symlinked out into your active Environment
- This enables several "superpowers":
    - Having multiple versions of the same package installed
    - Rollbacks are as easy as the nix daemon updating the symlinks


### home-manager
- 
