{
  description = "Jekyll blog environment with direct Ruby package management";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, flake-utils }:
    flake-utils.lib.eachDefaultSystem (system:
      let
        pkgs = nixpkgs.legacyPackages.${system};
        
        # Use Ruby packages directly instead of bundlerEnv
        jekyll = pkgs.bundlerApp {
          pname = "jekyll";
          gemdir = ./.;
          exes = [ "jekyll" ];
        };
      in
      {
        devShells.default = pkgs.mkShell {
          buildInputs = [
            pkgs.ruby_3_2
            pkgs.bundler
            # Build dependencies
            pkgs.gcc
            pkgs.gnumake
          ];

          shellHook = ''
            echo "Jekyll development environment activated!"
            echo "Run 'bundle exec jekyll serve' to start your local server"
          '';
        };

        packages.default = pkgs.stdenv.mkDerivation {
          name = "jekyll-site";
          src = ./.;
          buildInputs = [
            pkgs.ruby_3_2
            pkgs.bundler
            # Build dependencies
            pkgs.gcc
            pkgs.gnumake
          ];
          buildPhase = ''
            export HOME=$PWD
            bundle install
            bundle exec jekyll build
          '';
          installPhase = ''
            mkdir -p $out
            cp -r _site/* $out/
          '';
        };
      });
}