{ config, pkgs, ... }:

{
  # 1. Basic user information
  home.username = "ubuntu";
  home.homeDirectory = "/home/ubuntu";

  # 2. Package installation
  home.packages = [
    pkgs.htop
    pkgs.git
    pkgs.nano
    pkgs.firefox
  ];

  # 3. Environment Variables
  home.sessionVariables = {
    EDITOR = "nano"; # The ***best*** editor
    PROMPT = "%F{blue}%~ %(?.%F{green}.%F{red})%#%f ";
  };

  # 4. Program Configurations
  programs.git = {
    enable = true;
    settings = {
      user.name = "ubuntu";
      user.email = "ubuntu@canonical.com";
      gitreview.username = "ubuntu";
    };
  };

  programs.zsh = {
    enable = true;
    shellAliases = {
      ll = "ls -l";
    };
  };

  # 5. State Version (Required for compatability reasons)
  home.stateVersion = "25.11";

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
}
