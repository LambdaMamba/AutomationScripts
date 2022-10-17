#!/bin/bash

add-apt-repository ppa:openjdk-r/ppa
apt-get update
apt-get install -y unzip
apt-get install -y openjdk-11-jdk
wget https://github.com/NationalSecurityAgency/ghidra/releases/download/Ghidra_10.1.5_build/ghidra_10.1.5_PUBLIC_20220726.zip

hash=$(sha256sum ghidra_10.1.5_PUBLIC_20220726.zip)

echo 'The sha256 hash is' $hash
read -p 'Is this the correct hash for ghidra_10.1.5_PUBLIC_20220726.zip ? Yes (1) or No (0):' x

if [ $x == 1 ]
then
    echo 'Correct hash, continuing to unzip and will run Ghidra'
    unzip ghidra_10.1.5_PUBLIC_20220726.zip
    cd ghidra_10.1.5_PUBLIC
    ./ghidraRun

elif [ $x == 0 ]
then
    echo 'Wrong hash, quitting and deleting file'
    rm ghidra_10.1.5_PUBLIC_20220726.zip
fi
