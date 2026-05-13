# home-manager-demo

A simple and easy to understand home-manager config.

## Steps

1. Clone this repo

```
git clone https://github.com/quanchobi/home-manager-demo.git
cd home-manager-demo
```

2. Install nix

```
sh <(curl --proto '=https' --tlsv1.2 -L https://nixos.org/nix/install) --daemon --yes --nix-extra-conf-file <(echo "experimental-features = nix-command flakes")
```

3. Activate this configuration

```
nix run home-manager -- switch --flake .
```

4. Check your git username

```
git config user.name
```

5. Check the git config symlink to the nix store

```
ls -l ~/.config/git
```

6. View every library and package required for htop

```
nix-store --query --tree $(which htop)
```

Note that ncurses and glibc are there.

7. View all packages that depend on glibc

```
nix-store --query --referrers /nix/store/<find glibc path from above command>
```

8. Update your git username, email, and change nano (ew) to vim (cool)

```
vim example-home.nix
```

9. Switch to the new configuration

```
home-manager switch --flake .
```

10. Maybe nano really is the best editor after all (its not), rollback to the previous generation:
```
home-manager switch --rollback
```
