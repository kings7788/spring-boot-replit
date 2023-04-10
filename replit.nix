{ pkgs }: {
    deps = [
        pkgs.graalvm17-ce
        pkgs.maven
        pkgs.replitPackages.jdt-language-server
        pkgs.replitPackages.java-debug
    ];
}
# If you're used to the Nix way of doing things, you can replace the replit.nix file with a shell.nix or default.nix file, with the order of priority being: replit.nix -> shell.nix -> default.nix