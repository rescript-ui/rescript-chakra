{
  inputs.nixpkgs-unstable.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
  inputs.nixpkgs.follows = "nixpkgs-unstable";
  inputs.devenv.url = "github:cachix/devenv";

  outputs =
    inputs@{ flake-parts, nixpkgs, ... }:
    flake-parts.lib.mkFlake { inherit inputs; } {
      imports = [ inputs.devenv.flakeModule ];
      systems = nixpkgs.lib.systems.flakeExposed;
      perSystem = _args: {
        devenv.shells.default = {
          languages.javascript.enable = true;
          languages.javascript.corepack.enable = true;
        };
      };
    };
}
