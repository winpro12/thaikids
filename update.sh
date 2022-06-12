#!/bin/sh
bzip2 -c9k ./Packages > ./Packages.bz2 ./Packages.gz
printf "Origin: KidsAuto Pro v10 Repo\nLabel: KidsAuto Pro v10 Repo\nSuite: stable\nVersion: 1.0\nCodename: ios\nArchitecture: iphoneos-arm\nComponents: main\nDescription: KidsAuto Pro v10 for iDevice Model 10.x - 12.2 & 12.4 & Checkra1n Jailbreaks\nMD5Sum:\n "$(cat ./Packages | md5 | cut -d ' ' -f 1)" "$(stat -f%z ./Packages)" Packages\n "$(cat ./Packages.bz2 | md5 | cut -d ' ' -f 1)" "$(stat -f%z ./Packages.bz2)" Packages.bz2\n "$(cat ./Packages.gz | md5 | cut -d ' ' -f 1)" "$(stat -f%z ./Packages.gz)" Packages.gz\n" >Release;
exit 0
