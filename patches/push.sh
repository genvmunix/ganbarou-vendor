echo ============================================
echo 'Clean up directories from tmp files'
echo ============================================
cd ../
find ./ganbarou -name *.*~ -exec rm -rf {} \;
cd ganbarou
cd device
cd samsung
cd p4
echo ============================================
echo 'Push changes in P7500'
echo ============================================
repo start ics .
git checkout ics
git pull
git add -A
git commit -a
git push  git@github.com:beegee-tokyo/android_device_samsung_g_P7500.git ics
cd ../p4-common
echo ============================================
echo 'Push changes in P75xx-common'
echo ============================================
repo start ics .
git checkout ics
git add -A
git commit -a
git push  git@github.com:beegee-tokyo/android_device_samsung_g_P7500_common.git ics
cd ../p4wifi
echo ============================================
echo 'Push changes in P7510'
echo ============================================
repo start ics .
git checkout ics
git pull
git add -A
git commit -a
git push  git@github.com:beegee-tokyo/android_device_samsung_g_P7510.git ics
cd ../n7000
echo ============================================
echo 'Push changes in N7000'
echo ============================================
repo start ics .
git checkout ics
git pull
git add -A
git commit -a
git push  git@github.com:beegee-tokyo/android_device_samsung_g_N7000.git ics
cd ../../..
cd frameworks
cd base
echo ============================================
echo 'Push changes in framework base'
echo ============================================
repo start ics .
git checkout ics
git add -A
git commit -a
git push  git@github.com:beegee-tokyo/android_frameworks_base.git ics
cd ../..
cd vendor
cd samsung
echo ============================================
echo 'Push changes in vendor samsung'
echo ============================================
repo start master .
git checkout master
git add -A
git commit -a
git push  git@github.com:beegee-tokyo/ganbarou-vendor.git master
cd ../..
cd packages
cd apps
cd Settings
echo ============================================
echo 'Push changes in settings'
echo ============================================
repo start ics .
git checkout ics
git add -A
git commit -a
git push  git@github.com:beegee-tokyo/android_packages_apps_g_Settings.git ics
cd ../../..
cd packages
cd apps
cd Wallpapers
echo ============================================
echo 'Push changes in WallPapers'
echo ============================================
repo start ics .
git checkout ics
git add -A
git commit -a
git push  git@github.com:beegee-tokyo/android_packages_apps_g_Wallpapers.git ics
cd ../../..


