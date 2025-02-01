deviceDir=$(gettop)/device/motorola/odessa

chmod +x applyPatches.sh

# apply patches
${deviceDir}/applyPatches.sh ${deviceDir}/patches
