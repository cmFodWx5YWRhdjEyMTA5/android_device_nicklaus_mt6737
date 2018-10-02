#!/bin/sh
 echo $1
rootdirectory="$PWD"
# ---------------------------------
 dirs="frameworks/av frameworks/base"
 for dir in $dirs ; do
	cd $rootdirectory
	cd $dir
        echo "\n${RED}Applying ${NC}$dir ${RED}patches...${NC}\n"
	git apply -v --check $rootdirectory/device/mediatek/mt6737-common/patches/$dir/*.patch
done
 # -----------------------------------
echo "Changing to build directory..."
cd $rootdirectory