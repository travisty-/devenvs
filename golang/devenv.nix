{lib, ...}: {
  imports = [../common/devenv.nix];

  languages.go.enable = true;

  git-hooks.hooks = {
    gofmt.enable = lib.mkDefault true;
    golangci-lint.enable = lib.mkDefault true;
    golines.enable = lib.mkDefault true;
    gotest.enable = lib.mkDefault true;
    govet.enable = lib.mkDefault true;
    staticcheck.enable = lib.mkDefault true;
  };
}
