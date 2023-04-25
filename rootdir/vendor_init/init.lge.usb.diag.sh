#!/vendor/bin/sh

diag_enable=$1

target_operator=`getprop ro.vendor.lge.build.target_operator`
case "$target_operator" in
    "TRF")
        exit 1
        ;;
esac

if [ "$diag_enable" != "" ]; then
    echo "$diag_enable" > /sys/devices/platform/lg_diag_cmd/diag_enable
fi
