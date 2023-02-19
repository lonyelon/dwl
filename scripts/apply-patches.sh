#!/bin/sh

cd dwl
git apply ../patches/config.patch
git apply ../patches/enable-xwayland.patch
git apply ../patches/remove-layouts.patch
