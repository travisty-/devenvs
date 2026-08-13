{lib, ...}: {
  imports = [../common/devenv.nix];

  languages.typst.enable = true;

  git-hooks.hooks.typstyle.enable = lib.mkDefault true;
}
