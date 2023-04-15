# https://nixos.org/guides/nix-pills/nixpkgs-parameters.html#idm140737319687696

{ stdenv }:
stdenv.mkDerivation rec {
  pname = "spring-boot-replit";
  version = "1.0.0";
  src = builtins.fetchTarball {
    url = "https://github.com/iMinusMinus/${pname}/archive/master.tar.gz";
  };
}