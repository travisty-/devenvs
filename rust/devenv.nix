{lib, ...}: {
  imports = [../common/devenv.nix];

  languages.rust = {
    enable = true;
    components = lib.mkDefault [
      "cargo"
      "clippy"
      "rust-analyzer"
      "rustc"
      "rustfmt"
    ];
  };

  git-hooks.hooks = {
    clippy.enable = lib.mkDefault true;
    rustfmt.enable = lib.mkDefault true;
  };
}
