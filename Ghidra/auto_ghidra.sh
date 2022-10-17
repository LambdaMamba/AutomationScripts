#!/bin/bash

add-apt-repository ppa:openjdk-r/ppa
apt-get update
apt-get install -y unzip
apt-get install -y openjdk-11-jdk
wget https://github.com/NationalSecurityAgency/ghidra/releases/download/Ghidra_10.1.5_build/ghidra_10.1.5_PUBLIC_20220726.zip
unzip ghidra_10.1.5_PUBLIC_20220726.zip
cd ghidra_10.1.5_PUBLIC
./ghidraRun
