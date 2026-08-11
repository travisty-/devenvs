{lib, ...}: {
  enterShell = ''
    echo "• Entering shell ..."
  '';

  git-hooks.hooks = {
    alejandra.enable = lib.mkDefault true;
    deadnix.enable = lib.mkDefault true;
    detect-private-keys.enable = lib.mkDefault true;
    rumdl.enable = lib.mkDefault true;
    statix.enable = lib.mkDefault true;
    taplo.enable = lib.mkDefault true;
    typos.enable = lib.mkDefault true;
    yamlfmt.enable = lib.mkDefault true;
    yamllint = {
      enable = lib.mkDefault true;
      settings.configPath = lib.mkDefault "${./config/yamllint.yaml}";
    };
  };
}
