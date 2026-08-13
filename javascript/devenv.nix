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
      entry = lib.mkDefault "pnpm exec eslint --fix --max-warnings 0";
      files = lib.mkDefault "\\.([cm]?[jt]sx?)$";
    };
    prettier = {
      enable = lib.mkDefault true;
      entry = lib.mkDefault "pnpm exec prettier --write";
      files = lib.mkDefault "\\.([cm]?[jt]sx?|json|css|scss|less|html)$";
    };
  };
}
