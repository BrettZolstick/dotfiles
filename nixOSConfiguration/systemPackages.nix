{config, pkgs, ...}:

{
	imports = [];
	
	# Enable Hyprland
	programs.hyprland.enable = true;

	# Packages that I view as part of the base system (i.e. terminal emulators, git, text editors)
	# 	(For additional packages, such as games and other software, please add them in additionalPackages.nix)
	environment.systemPackages = with pkgs; [
		git
		micro
		kitty
		bat
		btop
		tree
	];
}
