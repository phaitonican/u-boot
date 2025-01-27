{
  pkgs ? import <nixpkgs> { },
}:

pkgs.mkShell rec {
  buildInputs = with pkgs; [

    (python3.withPackages (
      p: with p; [
        setuptools
        pyelftools
      ]
    ))

    swig
    ncurses
    gnumake
    bison
    flex
    openssl
    bc
    gnutls

  ];
  LD_LIBRARY_PATH = buildInputs;
}
