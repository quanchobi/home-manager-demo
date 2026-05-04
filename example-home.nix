{ config, pkgs, ... }:

{
  # 1. Basic user information
  home.username = "ubuntu";
  home.homeDirectory = "/home/ubuntu";

  # 2. Package installation
  home.packages = [
    pkgs.htop
    pkgs.git
    pkgs.vim
    pkgs.firefox
  ];

  # 3. Environment Variables
  home.sessionVariables = {
    EDITOR = "vim";
  };

  # 4. Program Configurations
  programs.git = {
    enable = true;
    userName = "Nix Demo";
    userEmail = "nix@demo.com";
  };

  programs.bash = {
    enable = true;
    shellAliases = {
      ll = "ls -l";
      update = "home-manager switch";
    };
  };

  # 5. State Version (Required)
  home.stateVersion = "25.11";

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
}
