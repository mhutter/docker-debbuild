# Docker Image `debbuild`

Image containing everything needed to build DEB packages (maybe).

When used as documented below, `$DEBEMAIL` and `$DEBFULLNAME` will be set automatically.

## Usage

    docker run -it --rm \
      -v "${PWD}":/work \
      -v "${HOME}/.gitconfig":/root/.gitconfig \
      -v "${HOME}/.gnupg":/root/.gnupg \
      mhutter/debbuild
