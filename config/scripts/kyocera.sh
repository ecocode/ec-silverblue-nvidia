#!/usr/bin/env bash

# Tell this script to exit if there are any errors.
# You should have this in every custom script, to ensure that your completed
# builds actually ran successfully without any errors!
set -oue pipefail

# Your code goes here.
echo 'this script downloads the linux universal kyocera printer driver and installs it'

# TODO: curl fails because SSL cert not found
curl -o kyocera-driver.zip https://www.kyoceradocumentsolutions.be/content/download-center/be/drivers/all/Linux_Universal_Driver_zip.download.zip
unzip kyocera-driver.zip

# TODO: get the rpm and sudo dnf install it
