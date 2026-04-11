{ pkgs, stdenv, glib, ... }:

let
  uuid = "paperwm-niri@josh-j.github.com";
in
stdenv.mkDerivation {
  pname = "gnome-shell-extension-paperwm-niri";
  version = "unstable";
  src = ./.;

  makeFlags = [ "SOURCE=$(src)" "EXT_DIR=$(out)/share/gnome-shell/extensions" ];

  nativeBuildInputs = with pkgs;
    [ glib
    ];

  passthru = {
    extensionPortalSlug = "paperwm-niri";
    extensionUuid = uuid;
  };
}
