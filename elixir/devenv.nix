{lib, ...}: {
  imports = [../common/devenv.nix];

  languages.elixir.enable = true;

  git-hooks.hooks.mix-format.enable = lib.mkDefault true;
}
