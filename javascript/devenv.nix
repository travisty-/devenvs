{lib, ...}: {
  imports = [../common/devenv.nix];

  languages.javascript = {
    enable = true;
    pnpm.enable = lib.mkDefault true;
    pnpm.install.enable = lib.mkDefault true;
  };

  git-hooks.hooks = {
    eslint = {
      enable = lib.mkDefault true;
      entry = lib.mkOverride 999 "pnpm exec eslint --fix --max-warnings 0";
      files = lib.mkOverride 999 "\\.([cm]?[jt]sx?)$";
    };
    prettier = {
      enable = lib.mkDefault true;
      entry = lib.mkOverride 999 "pnpm exec prettier --write";
      files = lib.mkOverride 999 "\\.([cm]?[jt]sx?|json|css|scss|less|html)$";
    };
    yamlfmt.excludes = ["pnpm-lock\\.yaml"];
    yamllint.excludes = ["pnpm-lock\\.yaml"];
  };
}
