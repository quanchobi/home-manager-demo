# home-manager-demo

A simple and easy to understand home-manager config.

## Steps

1. Clone this repo

```
git clone https://github.com/quanchobi/home-manager-demo.git
cd home-manager-demo
```

2. Install nix noninteractively

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

5. Update your git username: `vi example-home.nix`

```
programs.git = {
    settings = {
        user = {
            name = "FIXME";
        };
    };
};
```
