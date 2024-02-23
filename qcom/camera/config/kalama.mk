dtbo-$(CONFIG_ARCH_KALAMA) := kalama-camera.dtbo

SOMC_TARGET_PRODUCT := pdx234
SOMC_TARGET_OPERATOR := generic
SOMC_PLATFORM := yodo

ifeq ($(SOMC_PLATFORM), yodo)

ifeq ($(SOMC_TARGET_PRODUCT),pdx234)
dtb-$(CONFIG_ARCH_KALAMA) += kalama-camera.dtbo

dtbo-$(CONFIG_ARCH_KALAMA)		+= kalama-camera-sensor-pdx234.dtbo
endif

else

dtbo-$(CONFIG_ARCH_KALAMA) += kalama-camera-sensor-cdp.dtbo \
				kalama-camera-sensor-mtp.dtbo \
				kalama-camera-sensor-qrd.dtbo \
				kalama-camera-sensor-hdk.dtbo \
				kalama-sg-hhg-camera.dtbo \
				kalama-sg-hhg-camera-sensor.dtbo

endif
