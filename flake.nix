{
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-25.05";
    utils.url = "github:numtide/flake-utils";
  };

  outputs =
    {
      self,
      nixpkgs,
      utils,
    }:
    utils.lib.eachDefaultSystem (
      system:
      let
        pkgs = nixpkgs.legacyPackages.${system};
      in
      rec {
        devShell = pkgs.mkShell {
          buildInputs = with pkgs; [
            zola
            woff2
            tailwindcss_4
            nodejs
          ];
        };
        packages.site = pkgs.stdenv.mkDerivation {
          name = "site";
          src = ./.;

          nativeBuildInputs = [ pkgs.zola pkgs.tailwindcss_4 pkgs.nodejs ];
          buildPhase = ''
            zola build
            tailwindcss -i ./static/pretailwind.css -o $out/public/style.css -m
          '';
          installPhase = "cp -r public $out";
        };
        defaultPackage = self.packages.${system}.site;
      }
    );
}