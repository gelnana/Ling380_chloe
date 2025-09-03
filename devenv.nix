{ pkgs, lib, config, ... }: {
  # https://devenv.sh/packages/
  packages = [
    pkgs.python3Packages.jupyter
    pkgs.python3Packages.nltk
    pkgs.python3Packages.spacy
  ];

  # https://devenv.sh/languages/
  languages.python.enable = true;

  enterShell = ''
    jupyter --version
    python -c "import nltk; print('NLTK available')"
    python -c "import spacy; print('SpaCy available')"
  '';

  # See full reference at https://devenv.sh/reference/options/
}

