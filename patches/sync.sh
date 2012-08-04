echo ============================================
echo 'Clean up directories from tmp files'
echo ============================================
cd ../
find ./ganbarou -name *.*~ -exec rm -rf {} \;
cd ganbarou
echo ============================================
echo 'Init sync CM9'
echo ============================================
repo init -u git://github.com/beegee-tokyo/ganbarou.git -b ics
echo ============================================
echo 'Sync CM9'
echo ============================================
repo sync -j32
echo ============================================
echo 'Get prebuilts'
echo ============================================
./vendor/cm/get-prebuilts

