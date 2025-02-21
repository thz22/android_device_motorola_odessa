deviceDir=$(gettop)/device/motorola/odessa

# apply patches
${deviceDir}/applyPatches.sh ${deviceDir}/patches

# Aospa Gapps
git clone https://gitlab.com/ThankYouMario/android_vendor_google_gms.git --single-branch --depth=1 vendor/google/gms 
