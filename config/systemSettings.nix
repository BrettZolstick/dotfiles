{ config, pkgs, ...}:

{
	imports = [
		/etc/nixos/hardware-configuration.nix
	];



	# Boot Options	
	boot = {
		loader = {
			systemd-boot.enable = true;
			efi.canTouchEfiVariables = true;
		};
		
		kernelPackages = pkgs.linuxPackages_latest;
	};



	# Networking Options
	networking = {
		hostName = "ethan-nixos";
		networkmanager.enable = true;
	};



	# Experimental Features
	nix.settings.experimental-features = [ "nix-command" "flakes" ];



	# Time Zone
	time.timeZone = "America/New_York";



	# Select internationalisation properties.
	i18n = {
		defaultLocale = "en_US.UTF-8";

		extraLocaleSettings = {
			LC_ADDRESS = "en_US.UTF-8";
			LC_IDENTIFICATION = "en_US.UTF-8";
			LC_MEASUREMENT = "en_US.UTF-8";
			LC_MONETARY = "en_US.UTF-8";
			LC_NAME = "en_US.UTF-8";
			LC_NUMERIC = "en_US.UTF-8";
			LC_PAPER = "en_US.UTF-8";
			LC_TELEPHONE = "en_US.UTF-8";
			LC_TIME = "en_US.UTF-8";
		};
			
	};


	
	# Configure keymap in X11
	services.xserver.xkb = {
		layout = "us";
		variant = "";
	};



	# Define a user account.
	users.users.ethan = {
		isNormalUser = true;
		description = "ethan";
		extraGroups = [ "networkmanager" "wheel" ];
		packages = with pkgs; [];
	};



	# Allow unfree packages
	nixpkgs.config.allowUnfree = true;



	# This value determines the NixOS release from which the default
	# settings for stateful data, like file locations and database versions
	# on your system were taken. It‘s perfectly fine and recommended to leave
	# this value at the release version of the first install of this system.
	# Before changing this value read the documentation for this option
	# (e.g. man configuration.nix or on https://nixos.org/nixos/options.html).
	system.stateVersion = "25.05"; # Did you read the comment?

}
