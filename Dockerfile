FROM registry.fedoraproject.org/fedora-toolbox:38
LABEL MAINTAINER="jlindgre@redhat.com"

# the big phat layer
RUN dnf update -y && \
    dnf install -y \
    golang ruby-devel elixir erlang python3-pip \
    ansible mosh podman buildah skopeo ImageMagick bind-utils \
    postgresql mariadb redis \
    sqlite-devel @"C Development Tools and Libraries" redhat-rpm-config \
    @"Virtualization" virt-manager \
    podman-docker borgbackup pinentry restic \
    fzf vim tmux the_silver_searcher gh jq htop httpie bat moreutils \
    lm_sensors xdg-utils w3m ncdu \
    arm-none-eabi-gcc avr-gcc avrdude dfu-programmer dfu-util arm-none-eabi-newlib openssl-devel \
    && \
    dnf clean all
