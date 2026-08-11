{lib, ...}: {
  enterShell = ''
    echo "• Entering shell ..."
  '';

  git-hooks.hooks = {
    alejandra.enable = lib.mkDefault true;
    check-merge-conflicts.enable = lib.mkDefault true;
    deadnix.enable = lib.mkDefault true;
    detect-private-keys.enable = lib.mkDefault true;
    rumdl.enable = lib.mkDefault true;
    rumdl.args = lib.mkDefault ["--fix" "--config" "${./config/rumdl.toml}"];
    statix.enable = lib.mkDefault true;
    taplo.enable = lib.mkDefault true;
    typos.enable = lib.mkDefault true;
    yamlfmt.enable = lib.mkDefault true;
    yamllint.enable = lib.mkDefault true;
    yamllint.settings.configPath = lib.mkDefault "${./config/yamllint.yaml}";
  };
}
