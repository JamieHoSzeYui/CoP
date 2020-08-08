#!bin/bash

aria2c http://tdrive.manofuranium.workers.dev/ROS-MIUI_RedmiNote9S_20.7.29_v12-10.zip
unzip *.zip -d work
rm -f *.zip
cd work
rm -f system.new.dat.br system.patch.dat system.transfer.list
cd ..
aria2c $BASE
unzip *.zip system.new.dat.br system.transfer.list system.patch.dat -d work -qq
rm -f *.zip
cd work
zip -r $ZIPNAME_RedmiNote9S_$MIUIVER_henlotools-10.zip .
