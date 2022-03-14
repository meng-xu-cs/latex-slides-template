#!/bin/bash -e

for deck in deck-*; do
    echo "Building $deck"

    make clean
    rm -rf target

    ln -s $deck target
    make

    cp p.pdf slides-${deck}.pdf
done
