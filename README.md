# Docker Image `debbuild`

Image containing everything needed to build DEB packages (maybe).

When used as documented below, `$DEBEMAIL` and `$DEBFULLNAME` will be set automatically.

## Usage

    docker run -it --rm \
      -v "${PWD}/..":/work \
      -v "${HOME}/.gitconfig":/home/builder/.gitconfig \
      -v "${HOME}/.gnupg":/home/builder/.gnupg \
      mhutter/debbuild
