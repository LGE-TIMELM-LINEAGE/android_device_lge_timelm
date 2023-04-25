#!/vendor/bin/sh

count=0
while [ $count -lt 10 ]; do
    boot=`getprop vendor.lge.boot_completed`
    if [ $boot = "1" ]; then
        break;
    else
        count=$(($count+1))
        sleep 5
    fi
done

sleep 20
setprop vendor.lge.usb.config none
sleep 2
setprop vendor.lge.usb.config factory,adb
