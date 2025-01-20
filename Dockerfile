FROM arm64v8/ubuntu:20.04

ENV DEBIAN_FRONTEND=noninteractive

# Install necessary LaTeX packages, fonts, and utilities
RUN apt-get update && apt-get install -y \
    wget \
    texlive-latex-base \
    texlive-fonts-recommended \
    texlive-extra-utils \
    texlive-latex-extra \
    texlive-xetex \
    texlive-fonts-extra \
    lmodern \
    ghostscript \
    librsvg2-bin \
    imagemagick \
    # Additional font packages for better coverage
    fonts-dejavu \
    fonts-freefont-ttf \
    fonts-liberation \
    fonts-font-awesome \
    fonts-noto \
    fonts-noto-color-emoji \
    nano \
    tree \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# Install Pandoc (ARM version)
RUN wget https://github.com/jgm/pandoc/releases/download/3.5/pandoc-3.5-1-arm64.deb \
    && dpkg -i pandoc-3.5-1-arm64.deb \
    && rm pandoc-3.5-1-arm64.deb

# Install the Eisvogel template
RUN mkdir -p /root/.local/share/pandoc/templates \
    && wget https://github.com/Wandmalfarbe/pandoc-latex-template/releases/latest/download/Eisvogel.tar.gz \
    && tar xzf Eisvogel.tar.gz \
    && mv Eisvogel-3.1.0/eisvogel.latex /root/.local/share/pandoc/templates/ \
    && rm -rf Eisvogel-3.1.0 \
    && rm Eisvogel.tar.gz


WORKDIR /data
