{
  bun2nix,
  ...
}:
bun2nix.mkDerivation {
  pname = "workspace-test-sveltekit";
  version = "1.0.0";

  src = ./.;

  bunDeps = bun2nix.fetchBunDeps {
    bunNix = ./bun.nix;
  };

  buildPhase = ''
    cd packages/sveltekit
    bun --bun run build
  '';

  dontFixup = true;

  installPhase = ''
    mkdir -p $out
    cp -r .svelte-kit/output $out/
  '';
}
