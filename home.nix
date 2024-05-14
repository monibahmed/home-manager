{ config, pkgs, ... }:

{
  home.username = "nixos";
  home.homeDirectory = "/home/nixos";

  home.stateVersion = "23.11"; # Please read the comment before changing.

  home.packages = with pkgs; [
	  vim
	  git
    wget
    jdk
    graphviz
	  emacs29-gtk3
	  emacsPackages.vterm
	  emacsPackages.pdf-tools
	  libvterm
    stack
	  enchant
	  jetbrains-mono
    nodejs
	  gh
    zotero
  ];


  home.file = {
  };

  home.sessionVariables = {
    EDITOR = "emacs";
  };

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
}
