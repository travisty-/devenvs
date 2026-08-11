{lib, ...}: {
  imports = [../common/devenv.nix];

  languages.go.enable = true;

  git-hooks.hooks = {
    golangci-lint.enable = lib.mkDefault true;
    golines.enable = lib.mkDefault true;
    gotest.enable = lib.mkDefault true;
  };
}
