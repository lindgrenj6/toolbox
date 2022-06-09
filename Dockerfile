FROM registry.fedoraproject.org/fedora-toolbox:36
LABEL MAINTAINER="jlindgre@redhat.com"

# proglangs
RUN dnf install -y golang ruby-devel elixir erlang
# dev tools
RUN dnf install -y ansible mosh podman buildah skopeo ImageMagick
# db crap
RUN dnf install -y postgresql mariadb redis 
# libraries        
RUN dnf install -y sqlite-devel @"C Development Tools and Libraries" redhat-rpm-config
# daily tools 
RUN dnf install -y fzf vim tmux the_silver_searcher gh jq htop

# update the rest of the packages and clean up (easy to rebuild and pull in updates this way)
RUN dnf update -y && dnf clean all
