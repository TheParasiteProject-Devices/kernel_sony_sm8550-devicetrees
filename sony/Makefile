KALAMA_BASE_DTB += ../qcom/kalama.dtb ../qcom/kalama-v2.dtb ../qcom/kalama-sg.dtb

ifeq ($(CONFIG_MACH_SONY_PDX234),y)
SOMC_KALAMA_BOARDS += \
	kalama-yodo-pdx234_generic-overlay.dtbo
else ifeq ($(CONFIG_MACH_SONY_PDX237),y)
SOMC_KALAMA_BOARDS += \
	kalama-yodo-pdx237_generic-overlay.dtbo
endif

kalama-overlays-dtb-y += $(SOMC_KALAMA_BOARDS) $(KALAMA_BASE_DTB)
dtb-y += $(SOMC_KALAMA_BOARDS) $(KALAMA_BASE_DTB)

always-y	:= $(dtb-y)
subdir-y	:= $(dts-dirs)
clean-files	:= *.dtb *.dtbo
