{
  inputs.nixpkgs.url = "github:nixos/nixpkgs?ref=nixpkgs-unstable";

  outputs = {
    self,
    nixpkgs,
    ...
  }: let
    pkgs = import nixpkgs {system = "x86_64-linux";};
    inherit (pkgs) glibcLocales;
    inherit (pkgs.stdenv) isLinux;
    inherit (pkgs.lib) optionalString;

    beamPkgs = with pkgs.beam_minimal; packagesWith interpreters.erlangR26;
    erlang = beamPkgs.erlang;
    elixir = beamPkgs.elixir_1_15;
  in {
    formatter.x86_64-linux = pkgs.alejandra;

    devShells.x86_64-linux.default = pkgs.mkShell {
      packages = [elixir pkgs.nil pkgs.dart pkgs.inotifyTools];

      LOCALE_ARCHIVE = optionalString isLinux "${glibcLocales}/lib/locale/locale-archive";
      LANG = "en_US.UTF-8";

      ERL_INCLUDE_PATH = "${erlang}/lib/erlang/usr/include";
    };
  };
}
