{self, ...}: {
  perSystem = {
    self',
    pkgs,
    ...
  }: {
    packages = {
      xrt = pkgs.callPackage ./xilinx/xrt.nix {};
      xrt-drivers = pkgs.callPackage ./xilinx/xrt-drivers.nix {
        inherit (self'.packages) xrt;
        inherit (pkgs.linuxPackages_5_10) kernel;
      };
      sfc-drivers = pkgs.callPackage ./xilinx/sfc-driver.nix {
        inherit (pkgs.linuxPackages) kernel;
      };
      xntools-core = pkgs.callPackage ./xilinx/xntools-core.nix {};

      firmware-sn1000 = pkgs.callPackage ./xilinx/firmware-sn1000.nix {};

      xilinx-env = pkgs.callPackage ./xilinx/fhs-env.nix {};
      xilinx-firmware = pkgs.callPackage ./xilinx/firmware.nix {};
      xilinx-cable-drivers = pkgs.callPackage ./xilinx/cable-drivers {};
    };
  };
}
