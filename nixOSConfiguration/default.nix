{ config, pkgs, ...}:

{
	imports = [
		./additionalPackages.nix
		./systemPackages.nix
		./systemSettings.nix
	];
}
