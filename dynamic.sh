#!bin/bash
aria2c http://tdrive.manofuranium.workers.dev/xiaomi.eu_multi_RedmiNote9Pro_RedmiNote9S_20.7.30_v12-10.zip
unzip *.zip -d work
rm -f *.zip
rm -rf system.new.dat.br system.patch.dat system.transfer.list product.new.dat.br product.transfer.list product.patch.dat
aria2c $BASE
unzip *.zip system.new.dat.br system.transfer.list system.patch.dat product.new.dat.br product.transfer.list product.patch.dat -d work -qq
rm -f *.zip
cd work
zip -r $ZIPNAME_RedmiNote9S_$MIUIVER_henlotools-10.zip
             