FROM registry.fedoraproject.org/f32/fedora-toolbox:32
MAINTAINER jlindgre@redhat.com

USER 0
RUN dnf update --refresh -yq
RUN dnf install -y \
        ruby-devel \
        ansible \
        mosh \
        postgresql mariadb redis \
        ImageMagick-devel \
        skopeo buildah podman \
        @"C Development Tools and Libraries" \
        redhat-rpm-config \
        golang-bin \
        fzf vim 

RUN pip3 install receptor receptor_catalog

RUN gem install bundler rubocop:0.72.0 rubocop-performance:1.6.1 rubocop-rspec:1.38.1 
