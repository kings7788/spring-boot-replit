{ pkgs ? import <nixpkgs> {} }:

# https://nixos.org/manual/nixpkgs/stable/#sec-pkgs-mkShell
pkgs.mkShell {
  name = "nix-shell"; # the name of the derivation. default: nix-shell
  packages = []; # Add executable packages to the nix-shell environment. default: []
  inputsFrom = []; # Add build dependencies of the listed derivations to the nix-shell environment. default: []
  shellHook = ''
    export M2_REPO="/home/runner/.m2/repository"
    export CLASSPATH="$M2_REPO/org/springframework/boot/spring-boot-starter-webflux/3.0.5/spring-boot-starter-webflux-3.0.5.jar:$M2_REPO/org/springframework/boot/spring-boot-starter/3.0.5/spring-boot-starter-3.0.5.jar:$M2_REPO/org/springframework/boot/spring-boot/3.0.5/spring-boot-3.0.5.jar:$M2_REPO/org/springframework/boot/spring-boot-autoconfigure/3.0.5/spring-boot-autoconfigure-3.0.5.jar:$M2_REPO/org/springframework/boot/spring-boot-starter-logging/3.0.5/spring-boot-starter-logging-3.0.5.jar:$M2_REPO/ch/qos/logback/logback-classic/1.4.6/logback-classic-1.4.6.jar:$M2_REPO/ch/qos/logback/logback-core/1.4.6/logback-core-1.4.6.jar:$M2_REPO/org/apache/logging/log4j/log4j-to-slf4j/2.19.0/log4j-to-slf4j-2.19.0.jar:$M2_REPO/org/apache/logging/log4j/log4j-api/2.19.0/log4j-api-2.19.0.jar:$M2_REPO/org/slf4j/jul-to-slf4j/2.0.7/jul-to-slf4j-2.0.7.jar:$M2_REPO/jakarta/annotation/jakarta.annotation-api/2.1.1/jakarta.annotation-api-2.1.1.jar:$M2_REPO/org/yaml/snakeyaml/1.33/snakeyaml-1.33.jar:$M2_REPO/org/springframework/boot/spring-boot-starter-json/3.0.5/spring-boot-starter-json-3.0.5.jar:$M2_REPO/com/fasterxml/jackson/core/jackson-databind/2.14.2/jackson-databind-2.14.2.jar:$M2_REPO/com/fasterxml/jackson/core/jackson-annotations/2.14.2/jackson-annotations-2.14.2.jar:$M2_REPO/com/fasterxml/jackson/core/jackson-core/2.14.2/jackson-core-2.14.2.jar:$M2_REPO/com/fasterxml/jackson/datatype/jackson-datatype-jdk8/2.14.2/jackson-datatype-jdk8-2.14.2.jar:$M2_REPO/com/fasterxml/jackson/datatype/jackson-datatype-jsr310/2.14.2/jackson-datatype-jsr310-2.14.2.jar:$M2_REPO/com/fasterxml/jackson/module/jackson-module-parameter-names/2.14.2/jackson-module-parameter-names-2.14.2.jar:$M2_REPO/org/springframework/boot/spring-boot-starter-reactor-netty/3.0.5/spring-boot-starter-reactor-netty-3.0.5.jar:$M2_REPO/io/projectreactor/netty/reactor-netty-http/1.1.5/reactor-netty-http-1.1.5.jar:$M2_REPO/io/netty/netty-codec-http/4.1.90.Final/netty-codec-http-4.1.90.Final.jar:$M2_REPO/io/netty/netty-common/4.1.90.Final/netty-common-4.1.90.Final.jar:$M2_REPO/io/netty/netty-buffer/4.1.90.Final/netty-buffer-4.1.90.Final.jar:$M2_REPO/io/netty/netty-transport/4.1.90.Final/netty-transport-4.1.90.Final.jar:$M2_REPO/io/netty/netty-codec/4.1.90.Final/netty-codec-4.1.90.Final.jar:$M2_REPO/io/netty/netty-handler/4.1.90.Final/netty-handler-4.1.90.Final.jar:$M2_REPO/io/netty/netty-codec-http2/4.1.90.Final/netty-codec-http2-4.1.90.Final.jar:$M2_REPO/io/netty/netty-resolver-dns/4.1.90.Final/netty-resolver-dns-4.1.90.Final.jar:$M2_REPO/io/netty/netty-resolver/4.1.90.Final/netty-resolver-4.1.90.Final.jar:$M2_REPO/io/netty/netty-codec-dns/4.1.90.Final/netty-codec-dns-4.1.90.Final.jar:$M2_REPO/io/netty/netty-transport-native-epoll/4.1.90.Final/netty-transport-native-epoll-4.1.90.Final-linux-x86_64.jar:$M2_REPO/io/netty/netty-transport-native-unix-common/4.1.90.Final/netty-transport-native-unix-common-4.1.90.Final.jar:$M2_REPO/io/netty/netty-transport-classes-epoll/4.1.90.Final/netty-transport-classes-epoll-4.1.90.Final.jar:$M2_REPO/io/projectreactor/netty/reactor-netty-core/1.1.5/reactor-netty-core-1.1.5.jar:$M2_REPO/io/netty/netty-handler-proxy/4.1.90.Final/netty-handler-proxy-4.1.90.Final.jar:$M2_REPO/io/netty/netty-codec-socks/4.1.90.Final/netty-codec-socks-4.1.90.Final.jar:$M2_REPO/org/springframework/spring-web/6.0.7/spring-web-6.0.7.jar:$M2_REPO/org/springframework/spring-beans/6.0.7/spring-beans-6.0.7.jar:$M2_REPO/org/springframework/spring-webflux/6.0.7/spring-webflux-6.0.7.jar:$M2_REPO/io/projectreactor/reactor-core/3.5.4/reactor-core-3.5.4.jar:$M2_REPO/org/reactivestreams/reactive-streams/1.0.4/reactive-streams-1.0.4.jar:$M2_REPO/org/springframework/spring-aop/6.0.7/spring-aop-6.0.7.jar:$M2_REPO/org/springframework/spring-expression/6.0.7/spring-expression-6.0.7.jar:$M2_REPO/org/springframework/spring-context/6.0.7/spring-context-6.0.7.jar:$M2_REPO/org/springframework/boot/spring-boot-starter-validation/3.0.5/spring-boot-starter-validation-3.0.5.jar:$M2_REPO/org/hibernate/validator/hibernate-validator/8.0.0.Final/hibernate-validator-8.0.0.Final.jar:$M2_REPO/jakarta/validation/jakarta.validation-api/3.0.2/jakarta.validation-api-3.0.2.jar:$M2_REPO/org/jboss/logging/jboss-logging/3.5.0.Final/jboss-logging-3.5.0.Final.jar:$M2_REPO/com/fasterxml/classmate/1.5.1/classmate-1.5.1.jar:$M2_REPO/org/springframework/boot/spring-boot-starter-actuator/3.0.5/spring-boot-starter-actuator-3.0.5.jar:$M2_REPO/org/springframework/boot/spring-boot-actuator-autoconfigure/3.0.5/spring-boot-actuator-autoconfigure-3.0.5.jar:$M2_REPO/org/springframework/boot/spring-boot-actuator/3.0.5/spring-boot-actuator-3.0.5.jar:$M2_REPO/io/micrometer/micrometer-observation/1.10.5/micrometer-observation-1.10.5.jar:$M2_REPO/io/micrometer/micrometer-commons/1.10.5/micrometer-commons-1.10.5.jar:$M2_REPO/io/micrometer/micrometer-core/1.10.5/micrometer-core-1.10.5.jar:$M2_REPO/org/hdrhistogram/HdrHistogram/2.1.12/HdrHistogram-2.1.12.jar:$M2_REPO/org/latencyutils/LatencyUtils/2.0.3/LatencyUtils-2.0.3.jar:$M2_REPO/org/slf4j/slf4j-api/2.0.7/slf4j-api-2.0.7.jar:$M2_REPO/org/springframework/spring-core/6.0.7/spring-core-6.0.7.jar:$M2_REPO/org/springframework/spring-jcl/6.0.7/spring-jcl-6.0.7.jar"
    echo "CLASSPATH is $CLASSPATH";
  ''; # Bash statements that are executed by nix-shell. default: ""


# https://nixos.org/manual/nixpkgs/stable/#sec-using-stdenv
# stdenv.mkDerivation attributes:
  pname = "spring-boot-replit";
  version = "1.0.0"; # automatically set name to "${pname}-${version}";
#  src = fetchurl {
#    url = "";
#    sha256  = "";
#  };
#  src = "home/runner/spring-boot-replit";
# search packages: https://search.nixos.org/packages
  buildInputs = [
    pkgs.graalvm17-ce
    pkgs.maven
    pkgs.replitPackages.jdt-language-server
    pkgs.replitPackages.java-debug
  ]; # ensures that the bin subdirectories of these packages appear in the PATH environment variable during the build, that their include subdirectories are searched by the C compiler, and so on
# $prePhases unpackPhase patchPhase $preConfigurePhases configurePhase $preBuildPhases buildPhase checkPhase $preInstallPhases installPhase fixupPhase installCheckPhase $preDistPhases distPhase $postPhases
#  buildPhase = ''
#  mvn clean compile
#  '';
#  installPhase = ''
#  mvn clean install
#  '';

  M2_HOME = pkgs.maven;
}
#Output has been trimmed to the last 20 lines
#evaluating file '/nix/store/l6smcclpy9f3v562q2ljb9zjdswg3ma1-nixpkgs-22.11-src/pkgs/top-level/config.nix'
#evaluating file '/nix/store/l6smcclpy9f3v562q2ljb9zjdswg3ma1-nixpkgs-22.11-src/lib/options.nix'
#evaluating file '/home/runner/.config/nixpkgs/config.nix'
#evaluating file '/nix/store/l6smcclpy9f3v562q2ljb9zjdswg3ma1-nixpkgs-22.11-src/pkgs/stdenv/linux/default.nix'
#evaluating file '/nix/store/l6smcclpy9f3v562q2ljb9zjdswg3ma1-nixpkgs-22.11-src/pkgs/top-level/stage.nix'
#evaluating file '/nix/store/l6smcclpy9f3v562q2ljb9zjdswg3ma1-nixpkgs-22.11-src/pkgs/stdenv/adapters.nix'
#evaluating file '/nix/store/l6smcclpy9f3v562q2ljb9zjdswg3ma1-nixpkgs-22.11-src/pkgs/build-support/trivial-builders.nix'
#evaluating file '/nix/store/l6smcclpy9f3v562q2ljb9zjdswg3ma1-nixpkgs-22.11-src/pkgs/top-level/splice.nix'
#evaluating file '/nix/store/l6smcclpy9f3v562q2ljb9zjdswg3ma1-nixpkgs-22.11-src/pkgs/top-level/all-packages.nix'
#evaluating file '/nix/store/l6smcclpy9f3v562q2ljb9zjdswg3ma1-nixpkgs-22.11-src/pkgs/top-level/aliases.nix'
#evaluating file '/nix/store/l6smcclpy9f3v562q2ljb9zjdswg3ma1-nixpkgs-22.11-src/pkgs/stdenv/generic/default.nix'
#evaluating file '/nix/store/l6smcclpy9f3v562q2ljb9zjdswg3ma1-nixpkgs-22.11-src/lib/customisation.nix'
#evaluating file '/nix/store/l6smcclpy9f3v562q2ljb9zjdswg3ma1-nixpkgs-22.11-src/pkgs/tools/text/gawk/default.nix'
#evaluating file '/nix/store/l6smcclpy9f3v562q2ljb9zjdswg3ma1-nixpkgs-22.11-src/pkgs/servers/x11/xorg/default.nix'
#evaluating file '/nix/store/l6smcclpy9f3v562q2ljb9zjdswg3ma1-nixpkgs-22.11-src/pkgs/servers/x11/xorg/overrides.nix'
#evaluating file '/nix/store/l6smcclpy9f3v562q2ljb9zjdswg3ma1-nixpkgs-22.11-src/pkgs/stdenv/generic/make-derivation.nix'
#evaluating file '/nix/store/l6smcclpy9f3v562q2ljb9zjdswg3ma1-nixpkgs-22.11-src/pkgs/build-support/mkshell/default.nix'
#evaluating file '/home/runner/spring-boot-replit/replit.nix'

# for maven project, see also https://nixos.org/manual/nixpkgs/stable/#maven or https://github.com/fzakaria/nixos-maven-example