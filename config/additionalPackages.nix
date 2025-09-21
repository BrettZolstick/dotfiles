# Packages that I view as not part of the base system go here.
# 	This is for things like browsers, games, and other software.
# 	please use systemPackages.nix for changes to the base system.

{config, pkgs, ...}:

{
	imports = [];

	environment.systemPackages = with pkgs; [
		firefox
		furnace
		steam
		vesktop
		orca-slicer	
	];
			
}
