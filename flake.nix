{
  description = "Jekyll blog environment";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, flake-utils }:
    flake-utils.lib.eachDefaultSystem (system:
      let
        pkgs = nixpkgs.legacyPackages.${system};
        rubyEnv = pkgs.bundlerEnv {
          name = "jekyll-blog-env";
          ruby = pkgs.ruby;
          gemdir = ./.;  # Use the current directory's Gemfile/Gemfile.lock
          groups = [ "default" "jekyll_plugins" ];
        };
      in
      {
        devShells.default = pkgs.mkShell {
          buildInputs = [
            rubyEnv
            rubyEnv.wrappedRuby
            pkgs.bundler
            pkgs.bundix  # To generate gemset.nix
          ];

          shellHook = ''
            echo "Jekyll development environment activated!"
            echo "Run 'bundle exec jekyll serve' to start your local server"
          '';
        };

        packages.default = pkgs.stdenv.mkDerivation {
          name = "jekyll-site";
          src = ./.;
          buildInputs = [ rubyEnv rubyEnv.wrappedRuby ];
          buildPhase = ''
            export HOME=$PWD
            bundle exec jekyll build
          '';
          installPhase = ''
            mkdir -p $out
            cp -r _site/* $out/
          '';
        };
      });
}