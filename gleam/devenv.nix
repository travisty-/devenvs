{
  config,
  lib,
  ...
}: {
  imports = [../common/devenv.nix];

  languages.gleam.enable = true;

  git-hooks.hooks.gleam-format = {
    enable = lib.mkDefault true;
    entry = lib.mkDefault "${lib.getExe config.languages.gleam.package} format";
    types = ["gleam"];
  };
}
