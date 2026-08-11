{
  config,
  lib,
  pkgs,
  ...
}: {
  imports = [../common/devenv.nix];

  packages = [pkgs.gofumpt];

  languages.go.enable = true;

  files.".golangci.yaml".source = lib.mkDefault ./config/golangci.yaml;

  git-hooks.tools.go = lib.mkDefault config.languages.go.package;

  git-hooks.hooks = {
    golangci-lint = {
      enable = lib.mkDefault true;
      entry = lib.mkOverride 999 "${lib.getExe config.git-hooks.hooks.golangci-lint.package} run";
      pass_filenames = lib.mkDefault false;
    };
    golangci-lint-fmt = {
      enable = lib.mkDefault true;
      entry = lib.mkDefault "${lib.getExe config.git-hooks.hooks.golangci-lint.package} fmt";
      files = "\\.go$";
      before = ["golangci-lint"];
    };
    gotest.enable = lib.mkDefault true;
  };
}
