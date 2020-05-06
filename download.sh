#!/bin/sh
. $(dirname $0)/path.sh

if [ -f wannier90_$VERSION_BASE.orig.tar.gz ]; then
  exit 127
fi
wget https://github.com/wannier-developers/wannier90/archive/v$VERSION_BASE.tar.gz
tar zxvf v$VERSION_BASE.tar.gz
mv wannier90-$VERSION_BASE wannier90_$VERSION_BASE
tar zcvf wannier90_$VERSION_BASE.orig.tar.gz wannier90_$VERSION_BASE
rm -rf v$VERSION_BASE.tar.gz wannier90_$VERSION_BASE
