for var in eng user userdebug; do
	add_lunch_combo lineage_nicklaus_$var
done

cd frameworks/av
git reset --hard && git clean -f -d
patch -p1 < ../../device/mediatek/mt6737-common/patches/001-Add-MTKEngineerMode-support-av.patch
cd ../..
cd frameworks/base
git reset --hard && git clean -f -d
patch -p1 < ../../device/mediatek/mt6737-common/patches/002-Add-MTKEngineerMode-support-base.patch
cd ../..


