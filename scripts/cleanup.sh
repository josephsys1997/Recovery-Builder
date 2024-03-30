#!/bin/bash env

sudo rm -rf /usr/share/dotnet /etc/mysql /etc/php /etc/apt/sources.list.d
docker rmi `docker images -q`
sudo apt-get remove account-plugin-facebook account-plugin-flickr account-plugin-jabber account-plugin-salut account-plugin-twitter account-plugin-windows-live account-plugin-yahoo aisleriot brltty duplicity empathy empathy-common example-content gnome-accessibility-themes gnome-contacts gnome-mahjongg gnome-mines gnome-orca gnome-screensaver gnome-sudoku gnome-video-effects gnomine landscape-common libreoffice-avmedia-backend-gstreamer libreoffice-base-core libreoffice-calc libreoffice-common libreoffice-core libreoffice-draw libreoffice-gnome libreoffice-gtk libreoffice-impress libreoffice-math libreoffice-ogltrans libreoffice-pdfimport libreoffice-style-galaxy libreoffice-style-human libreoffice-writer libsane libsane-common mcp-account-manager-uoa python3-uno rhythmbox rhythmbox-plugins rhythmbox-plugin-zeitgeist sane-utils shotwell shotwell-common telepathy-gabble telepathy-haze telepathy-idle telepathy-indicator telepathy-logger telepathy-mission-control-5 telepathy-salut totem totem-common totem-plugins printer-driver-brlaser printer-driver-foo2zjs printer-driver-foo2zjs-common printer-driver-m2300w printer-driver-ptouch printer-driver-splix
git config --global user.name ""
git config --global user.email ""
sudo -E apt-get -y purge azure-cli ghc* zulu* hhvm llvm* firefox google* dotnet* powershell openjdk* mysql* php* 
sudo -E apt-get clean
sudo rm -rf /opt/*
sudo rm -rf /usr/share/dotnet
sudo rm -rf "/usr/local/share/boost"
sudo rm -rf "$AGENT_TOOLSDIRECTORY"

name: My build action requiring more space
on: push

jobs:
  build:
    name: Build my artifact
    runs-on: ubuntu-latest
    steps:
      - name: Maximize build space
        uses: AdityaGarg8/remove-unwanted-software@v2
        with:
          remove-android: 'true'
      - name: Checkout
        uses: actions/checkout@v2

      - name: Build
        run: |
          echo "Free space:"
          df -h
          remove-dotnet:
           description: 'Removes .NET runtime and libraries.'
           required: true 
           default: 'false'
          remove-android:
           description: 'Removes Android SDKs and Tools.'
           required: false
           default: 'false'
          remove-haskell:
    description: 'Removes GHC (Haskell) artifacts.'
    required: true
    default: 'false'
  remove-codeql:
    description: 'Removes CodeQL Action Bundles.'
    required: true
    default: 'false'
  remove-docker-images:
    description: 'Removes cached Docker images.'
    required: false
    default: 'false'
