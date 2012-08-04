echo ============================================
echo 'set goo ROM version'
echo ============================================
export gooversion_n="0"
export gooversion_t="0"
export goobuild_n="11"
export goobuild_t="11"
echo gooversion Note=$gooversion_n.$goobuild_n
echo gooversion Tablet=$gooversion_t.$goobuild_t
echo ============================================
echo 'Setup ccache'
echo ============================================
export USE_CCACHE=1
export CCACHE_DIR=~/.cache/.ccache
prebuilt/linux-x86/ccache/ccache -M 20G
echo ============================================
echo 'Start the build for GT-P7500'
echo ============================================
. build/envsetup.sh && brunch p4
echo ============================================
echo 'Start the build for GT-P7510'
echo ============================================
. build/envsetup.sh && brunch p4wifi
echo ============================================
echo 'Start the build for GT-N7000'
echo ============================================
. build/envsetup.sh && brunch n7000
echo ============================================
echo 'Ganbarou patches'
echo ============================================
ANDROID_BUILD_TOP="/home/beegee/ganbarou"
SECURITYDIR="$ANDROID_BUILD_TOP/build/target/product/security"
QUIET="-q"
NOW=$(date +"%Y-%m-%d")
NOWORG=$(date +"%Y%m%d")
SED=sed
MD5=md5sum
OUT_TARGET_HOST="linux-x86"
echo ============================================
echo 'Unpack GT-P7500 for Ganbarou patches'
echo ============================================
OUT="/home/beegee/ganbarou/out/target/product/p4"
REPACK="$OUT/repack.d"
OUTFILE="$OUT/Ganbarou-GT-P7500-v$gooversion_t.$goobuild_t-$NOW.zip"
OUTFILE1="$OUT/Ganbarou-GT-P7501-v$gooversion_t.$goobuild_t-$NOW.zip"
OTAPACKAGE="$OUT/cm-base_for_ganbarou.zip"
(
mkdir $REPACK
mkdir $REPACK/ota
cd $REPACK/ota
printf "Unpacking $OTAPACKAGE..."
unzip $QUIET $OTAPACKAGE
echo
)
echo ============================================
echo 'Remove assert from updater-script'
echo ============================================
$SED -i \
	-e '/^a/d' \
	$REPACK/ota/META-INF/com/google/android/updater-script
echo ============================================
echo 'Add data extraction into updater-script'
echo ============================================
$SED -i \
	-e 's:package_extract_dir("system", "/system");:package_extract_dir("system", "/system");package_extract_dir("data", "/data");:' \
	$REPACK/ota/META-INF/com/google/android/updater-script
echo ============================================
echo 'Change p4 to GT-P7500 in build.prop'
echo ============================================
$SED -i \
	-e 's:p4:GT-P7500:' \
	$REPACK/ota/system/build.prop
#echo ============================================
#echo 'Change ro.product.board back to p3'
#echo ============================================
#$SED -i \
#	-e 's:ro.product.board=GT-P7500:ro.product.board=p3:' \
#	$REPACK/ota/system/build.prop
echo ============================================
echo 'Change ro.cm.version in build.prop'
echo ============================================
GANBAROU_VERSION="ro.cm.version=Ganbarou V$gooversion_t.$goobuild_t GT-P7500 CM9"
sed -i -e 's:ro.cm.version.*::' $REPACK/ota/system/build.prop
echo $GANBAROU_VERSION >> $REPACK/ota/system/build.prop
echo ============================================
echo 'Put "Samsung Specific Properties" into build.prop'
echo ============================================
echo "# Samsung Specific Properties" >> $REPACK/ota/system/build.prop
echo "ro.build.PDA=P7500UEALD7" >> $REPACK/ota/system/build.prop
echo "ro.build.hidden_ver=P7500UEALD7" >> $REPACK/ota/system/build.prop
echo "ro.build.changelist=396106" >> $REPACK/ota/system/build.prop
echo ============================================
echo 'Add Ganbarou specific data files'
echo ============================================
mkdir $REPACK/ota/data
mkdir $REPACK/ota/data/app
cp -r -f -v ~beegee/ganbarou/vendor/samsung/patches/data/app/. $REPACK/ota/data/app/.
echo ============================================
echo 'Add camera patch'
echo ============================================
cp -r -f -v ~beegee/ganbarou/vendor/samsung/patches/add-app-p7500/. $REPACK/ota/.
echo ============================================
echo 'Copy hosts, apns-conf.xml and gps.conf'
echo ============================================
cp -r -f -v ~beegee/ganbarou/vendor/samsung/patches/ganbarou/etc/gps.conf $REPACK/ota/system/etc/gps.conf
cp -r -f -v ~beegee/ganbarou/vendor/samsung/patches/ganbarou/etc/hosts $REPACK/ota/system/etc/hosts
echo ============================================
echo 'Remove duplicate files for GApps'
echo ============================================
rm $REPACK/ota/system/app/Gallery2.apk
rm $REPACK/ota/system/app/Provision.apk
rm $REPACK/ota/system/app/QuickSearchBox.apk
rm $REPACK/ota/system/app/PlusOne.apk
rm $REPACK/ota/system/app/Vending.apk
echo ============================================
echo 'Remove unwanted CM9 files'
echo ============================================
rm $REPACK/ota/system/app/RomManager.apk
echo ============================================
echo 'Add Ganbarou boot animation'
echo ============================================
cp -r -f -v ~beegee/ganbarou/vendor/samsung/patches/bootanimation-t/bootanimation.zip $REPACK/ota/system/media/bootanimation.zip
echo ============================================
echo 'Make copy of ota for GT-P7501 ROM'
echo ============================================
mkdir $REPACK/ota1
cp -rf $REPACK/ota/. $REPACK/ota1/.
echo ============================================
echo 'Change GT-P7500 to GT-P7501 in build.prop'
echo ============================================
$SED -i \
	-e 's:GT-P7500:GT-P7501:' \
	$REPACK/ota1/system/build.prop
echo ============================================
echo 'Zipping Ganbarou GT-P7500 ROM'
echo ============================================
( cd $REPACK/ota; zip $QUIET -r $REPACK/update.zip . )
echo ============================================
echo 'Zipping Ganbarou GT-P7501 ROM'
echo ============================================
( cd $REPACK/ota1; zip $QUIET -r $REPACK/update1.zip . )
echo ============================================
echo 'Sign Ganbarou GT-P7500 ROM'
echo ============================================
SECURITYDIR=$ANDROID_BUILD_TOP/build/target/product/security
java -Xmx1024m \
	-jar $ANDROID_BUILD_TOP/out/host/$OUT_TARGET_HOST/framework/signapk.jar \
	-w $SECURITYDIR/testkey.x509.pem $SECURITYDIR/testkey.pk8 \
	$REPACK/update.zip $OUTFILE
echo ============================================
echo 'Sign Ganbarou GT-P7501 ROM'
echo ============================================
SECURITYDIR=$ANDROID_BUILD_TOP/build/target/product/security
java -Xmx1024m \
	-jar $ANDROID_BUILD_TOP/out/host/$OUT_TARGET_HOST/framework/signapk.jar \
	-w $SECURITYDIR/testkey.x509.pem $SECURITYDIR/testkey.pk8 \
	$REPACK/update1.zip $OUTFILE1
echo ============================================
echo 'Cleanup'
echo ============================================
rm -rf $REPACK
echo ============================================
echo 'Create a md5 checksum image of the repacked P7500 package'
echo ============================================
(
img=`basename $OUTFILE`
cd `dirname $OUTFILE`
$MD5 $img >$img.md5sum
)
echo ============================================
echo 'Create a md5 checksum image of the repacked P7501 package'
echo ============================================
(
img=`basename $OUTFILE1`
cd `dirname $OUTFILE1`
$MD5 $img >$img.md5sum
)
echo ============================================
echo "Package complete: $OUTFILE"
echo "Package complete: $OUTFILE1"
echo ============================================
echo ============================================
echo 'Copy to shared directory and cleanup'
echo ============================================
cp $OUTFILE ~/Windows_7/
cp $OUTFILE.md5sum ~/Windows_7/
cp $OUTFILE1 ~/Windows_7/
cp $OUTFILE1.md5sum ~/Windows_7/
# rm $OUT/cm*.zip
echo ============================================
echo 'Unpack GT-P7510 for Ganbarou patches'
echo ============================================
OUT="/home/beegee/ganbarou/out/target/product/p4wifi"
REPACK="$OUT/repack.d"
OUTFILE="$OUT/Ganbarou-GT-P7510-v$gooversion_t.$goobuild_t-$NOW.zip"
OUTFILE1="$OUT/Ganbarou-GT-P7511-v$gooversion_t.$goobuild_t-$NOW.zip"
OTAPACKAGE="$OUT/cm-base_for_ganbarou.zip"
(
mkdir $REPACK
mkdir $REPACK/ota
cd $REPACK/ota
printf "Unpacking $OTAPACKAGE..."
unzip $QUIET $OTAPACKAGE
echo
)
echo ============================================
echo 'Remove assert from updater-script'
echo ============================================
$SED -i \
	-e '/^a/d' \
	$REPACK/ota/META-INF/com/google/android/updater-script
echo ============================================
echo 'Add data extraction into updater-script'
echo ============================================
$SED -i \
	-e 's:package_extract_dir("system", "/system");:package_extract_dir("system", "/system");package_extract_dir("data", "/data");:' \
	$REPACK/ota/META-INF/com/google/android/updater-script
echo ============================================
echo 'Change p4wifi to GT-P7510 in build.prop'
echo ============================================
$SED -i \
	-e 's:p4wifi:GT-P7510:' \
	$REPACK/ota/system/build.prop
echo ============================================
echo 'Change p4 to GT-P7510 in build.prop'
echo ============================================
$SED -i \
	-e 's:p4:GT-P7510:' \
	$REPACK/ota/system/build.prop
#echo ============================================
#echo 'Change ro.product.board back to p3'
#echo ============================================
#$SED -i \
#	-e 's:ro.product.board=GT-P7510:ro.product.board=p3:' \
#	$REPACK/ota/system/build.prop
echo ============================================
echo 'Change ro.cm.version in build.prop'
echo ============================================
GANBAROU_VERSION="ro.cm.version=Ganbarou V$gooversion_t.$goobuild_t GT-P7510 CM9"
sed -i -e 's:ro.cm.version.*::' $REPACK/ota/system/build.prop
echo $GANBAROU_VERSION >> $REPACK/ota/system/build.prop
echo ============================================
echo 'Put "Samsung Specific Properties" into build.prop'
echo ============================================
echo "# Samsung Specific Properties" >> $REPACK/ota/system/build.prop
echo "ro.build.PDA=P7510UEALD7" >> $REPACK/ota/system/build.prop
echo "ro.build.hidden_ver=P7510UEALD7" >> $REPACK/ota/system/build.prop
echo "ro.build.changelist=396106" >> $REPACK/ota/system/build.prop
echo ============================================
echo 'Add Ganbarou specific data files'
echo ============================================
mkdir $REPACK/ota/data
mkdir $REPACK/ota/data/app
cp -r -f -v ~beegee/ganbarou/vendor/samsung/patches/data/app/. $REPACK/ota/data/app/.
echo ============================================
echo 'Add camera patch'
echo ============================================
cp -r -f -v ~beegee/ganbarou/vendor/samsung/patches/add-app-p7500/. $REPACK/ota/.
echo ============================================
echo 'Copy hosts, apns-conf.xml and gps.conf'
echo ============================================
cp -r -f -v ~beegee/ganbarou/vendor/samsung/patches/ganbarou/etc/gps.conf $REPACK/ota/system/etc/gps.conf
cp -r -f -v ~beegee/ganbarou/vendor/samsung/patches/ganbarou/etc/hosts $REPACK/ota/system/etc/hosts
echo ============================================
echo 'Remove duplicate files for GApps'
echo ============================================
rm $REPACK/ota/system/app/Gallery2.apk
rm $REPACK/ota/system/app/Provision.apk
rm $REPACK/ota/system/app/QuickSearchBox.apk
rm $REPACK/ota/system/app/PlusOne.apk
rm $REPACK/ota/system/app/Vending.apk
echo ============================================
echo 'Remove unwanted CM9 files'
echo ============================================
rm $REPACK/ota/system/app/RomManager.apk
echo ============================================
echo 'Add Ganbarou boot animation'
echo ============================================
cp -r -f -v ~beegee/ganbarou/vendor/samsung/patches/bootanimation-t/bootanimation.zip $REPACK/ota/system/media/bootanimation.zip
echo ============================================
echo 'Make copy of ota for GT-P7511 ROM'
echo ============================================
mkdir $REPACK/ota1
cp -rf $REPACK/ota/. $REPACK/ota1/.
echo ============================================
echo 'Change GT-P7510 to GT-P7511 in build.prop'
echo ============================================
$SED -i \
	-e 's:GT-P7510:GT-P7511:' \
	$REPACK/ota1/system/build.prop
echo ============================================
echo 'Zipping Ganbarou GT-P7510 ROM'
echo ============================================
( cd $REPACK/ota; zip $QUIET -r $REPACK/update.zip . )
echo ============================================
echo 'Zipping Ganbarou GT-P7511 ROM'
echo ============================================
( cd $REPACK/ota1; zip $QUIET -r $REPACK/update1.zip . )
echo ============================================
echo 'Sign Ganbarou GT-P7511 ROM'
echo ============================================
SECURITYDIR=$ANDROID_BUILD_TOP/build/target/product/security
java -Xmx1024m \
	-jar $ANDROID_BUILD_TOP/out/host/$OUT_TARGET_HOST/framework/signapk.jar \
	-w $SECURITYDIR/testkey.x509.pem $SECURITYDIR/testkey.pk8 \
	$REPACK/update.zip $OUTFILE
echo ============================================
echo 'Sign Ganbarou GT-P7511 ROM'
echo ============================================
SECURITYDIR=$ANDROID_BUILD_TOP/build/target/product/security
java -Xmx1024m \
	-jar $ANDROID_BUILD_TOP/out/host/$OUT_TARGET_HOST/framework/signapk.jar \
	-w $SECURITYDIR/testkey.x509.pem $SECURITYDIR/testkey.pk8 \
	$REPACK/update1.zip $OUTFILE1
echo ============================================
echo 'Cleanup'
echo ============================================
rm -rf $REPACK
echo ============================================
echo 'Create a md5 checksum image of the repacked P7510 package'
echo ============================================
(
img=`basename $OUTFILE`
cd `dirname $OUTFILE`
$MD5 $img >$img.md5sum
)
echo ============================================
echo 'Create a md5 checksum image of the repacked P7511 package'
echo ============================================
(
img=`basename $OUTFILE1`
cd `dirname $OUTFILE1`
$MD5 $img >$img.md5sum
)
echo ============================================
echo "Package complete: $OUTFILE"
echo "Package complete: $OUTFILE1"
echo ============================================
echo ============================================
echo 'Copy to shared directory and cleanup'
echo ============================================
cp $OUTFILE ~/Windows_7/
cp $OUTFILE.md5sum ~/Windows_7/
cp $OUTFILE1 ~/Windows_7/
cp $OUTFILE1.md5sum ~/Windows_7/
# rm $OUT/cm*.zip
echo ============================================
echo 'Unpack GT-N7000 for Ganbarou patches'
echo ============================================
OUT="/home/beegee/ganbarou/out/target/product/n7000"
REPACK="$OUT/repack.d"
OUTFILE="$OUT/Ganbarou-GT-N7000-v$gooversion_n.$goobuild_n-$NOW.zip"
OTAPACKAGE="$OUT/cm-base_for_ganbarou.zip"
(
mkdir $REPACK
mkdir $REPACK/ota
cd $REPACK/ota
printf "Unpacking $OTAPACKAGE..."
unzip $QUIET $OTAPACKAGE
echo
)
echo ============================================
echo 'Add data extraction into updater-script'
echo ============================================
$SED -i \
	-e 's:package_extract_dir("system", "/system");:package_extract_dir("system", "/system");mount("ext4", "EMMC", "/dev/block/mmcblk0p10", "/data");package_extract_dir("data", "/data");:' \
	$REPACK/ota/META-INF/com/google/android/updater-script
echo ============================================
echo 'Change ro.cm.version in build.prop'
echo ============================================
GANBAROU_VERSION="ro.cm.version=Ganbarou V$gooversion_n.$goobuild_n GT-N7000 CM9"
sed -i -e 's:ro.cm.version.*::' $REPACK/ota/system/build.prop
echo $GANBAROU_VERSION >> $REPACK/ota/system/build.prop
echo ============================================
echo 'Add Ganbarou specific data files'
echo ============================================
mkdir $REPACK/ota/data
mkdir $REPACK/ota/data/app
cp -r -f -v ~beegee/ganbarou/vendor/samsung/patches/datap/app/. $REPACK/ota/data/app/.
echo ============================================
echo 'Copy hosts, apns-conf.xml and gps.conf'
echo ============================================
cp -r -f -v ~beegee/ganbarou/vendor/samsung/patches/ganbarou/etc/gps.conf $REPACK/ota/system/etc/gps.conf
cp -r -f -v ~beegee/ganbarou/vendor/samsung/patches/ganbarou/etc/hosts $REPACK/ota/system/etc/hosts
echo ============================================
echo 'Remove duplicate files for GApps'
echo ============================================
rm $REPACK/ota/system/app/Gallery2.apk
rm $REPACK/ota/system/app/Provision.apk
rm $REPACK/ota/system/app/QuickSearchBox.apk
rm $REPACK/ota/system/app/PlusOne.apk
rm $REPACK/ota/system/app/Vending.apk
echo ============================================
echo 'Remove unwanted CM9 files'
echo ============================================
rm $REPACK/ota/system/app/RomManager.apk
echo ============================================
echo 'Add Ganbarou boot animation'
echo ============================================
cp -r -f -v ~beegee/ganbarou/vendor/samsung/patches/bootanimation-p/bootanimation.zip $REPACK/ota/system/media/bootanimation.zip
echo ============================================
echo 'Zipping Ganbarou GT-N7000 ROM'
echo ============================================
( cd $REPACK/ota; zip $QUIET -r $REPACK/update.zip . )
echo ============================================
echo 'Sign Ganbarou GT-N7000 ROM'
echo ============================================
SECURITYDIR=$ANDROID_BUILD_TOP/build/target/product/security
java -Xmx1024m \
	-jar $ANDROID_BUILD_TOP/out/host/$OUT_TARGET_HOST/framework/signapk.jar \
	-w $SECURITYDIR/testkey.x509.pem $SECURITYDIR/testkey.pk8 \
	$REPACK/update.zip $OUTFILE
echo ============================================
echo 'Cleanup'
echo ============================================
rm -rf $REPACK
echo ============================================
echo 'Create a md5 checksum image of the repacked package'
echo ============================================
(
img=`basename $OUTFILE`
cd `dirname $OUTFILE`
$MD5 $img >$img.md5sum
echo ============================================
echo "Package complete: $OUTFILE"
echo ============================================
)
echo ============================================
echo 'Copy to shared directory and cleanup'
echo ============================================
cp $OUTFILE ~/Windows_7/
cp $OUTFILE.md5sum ~/Windows_7/
# rm $OUT/cm*.zip

