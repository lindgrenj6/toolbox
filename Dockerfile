FROM registry.fedoraproject.org/fedora-toolbox:36
MAINTAINER jlindgre@redhat.com

RUN dnf install -y \
        golang ruby-devel elixir erlang \
        ansible \
        mosh \
        postgresql mariadb redis \
        @"C Development Tools and Libraries" \
        redhat-rpm-config \
        fzf vim tmux the_silver_searcher
