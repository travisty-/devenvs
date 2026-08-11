{
  config,
  lib,
  ...
}: {
  imports = [../common/devenv.nix];

  languages.python = {
    enable = true;
    uv.enable = true;
    uv.sync.enable = true;
    venv.enable = true;
    version = lib.mkDefault "3.14";
  };

  git-hooks.hooks = {
    mypy.enable = lib.mkDefault true;
    mypy.settings.binPath = lib.mkDefault "${config.env.DEVENV_STATE}/venv/bin/mypy";
    ruff.enable = lib.mkDefault true;
    ruff-format.enable = lib.mkDefault true;
  };
}
