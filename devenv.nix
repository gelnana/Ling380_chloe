{ pkgs, lib, config, ... }: { packages = [ pkgs.jupyter ]; languages.python.enable = true; }

