#!/usr/bin/env bash

# Tell this script to exit if there are any errors.
# You should have this in every custom script, to ensure that your completed
# builds actually ran successfully without any errors!
set -oue pipefail

echo 'This script will install nushell from cargo.io'

export CARGO_RUSTFLAGS='["-C", "linker=clang", "-C", "link-arg=-fuse-ld=lld"]'

cargo install --root /usr nu
