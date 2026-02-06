{ self, ... }:
{
  perSystem =
    {
      final,
      ...
    }:
    {
      checks.workspace-sveltekit = final.callPackage "${self}/templates/workspace/sveltekit.nix" { };
    };
}
