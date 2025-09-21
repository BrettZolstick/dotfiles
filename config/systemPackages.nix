# Packages that I view as part of the base system go here.
# 	For additional packages, such as games and other software, 
# 	please add them in additionalPackages.nix

{config, pkgs, ...}:

{
	imports = [];
	
	# Enable Hyprland
	programs.hyprland.enable = true;

	environment.systemPackages = with pkgs; [
		git
		micro
		kitty
		bat
		btop
		tree
	];
}
