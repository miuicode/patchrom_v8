adb remount
rm out/framework* -rf
rm out/android.policy* -rf
rm out/services* -rf
#make clean
make out/framework.jar-phone
make out/android.policy.jar-phone
make out/services.jar-phone
adb reboot
