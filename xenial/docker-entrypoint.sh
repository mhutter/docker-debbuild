#!/bin/sh

export DEBFULLNAME="$(git config --get user.name)"
export DEBEMAIL="$(git config --get user.email)"

exec $@
