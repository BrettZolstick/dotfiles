{ config, pkgs, ...}:

{
	imports = [
		./additionalPackages.nix
		./systemPackages.nix
		./sytemSettings.nix
	];
}
