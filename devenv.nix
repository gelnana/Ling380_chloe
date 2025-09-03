{ pkgs, lib, config, ... }: {
  # https://devenv.sh/packages/
  packages = [
    pkgs.python3Packages.jupyter
  ];

  # https://devenv.sh/languages/
  languages.python.enable = true;

  enterShell = ''
    jupyter --version
  '';

  # See full reference at https://devenv.sh/reference/options/
}

