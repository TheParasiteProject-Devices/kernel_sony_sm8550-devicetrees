KALAMA_BASE_DTB += ../qcom/kalama.dtb ../qcom/kalama-v2.dtb ../qcom/kalama-sg.dtb ../qcom/kalama-qcm.dtb
KALAMA_APQ_BASE_DTB += ../qcom/kalamap.dtb ../qcom/kalamap-v2.dtb ../qcom/kalamap-sg.dtb ../qcom/kalamap-qcs.dtb

SOMC_TARGET_PRODUCT := pdx234
SOMC_TARGET_OPERATOR := generic
SOMC_PLATFORM := yodo
SOMC_PRODUCT_OPERATOR = $(SOMC_TARGET_PRODUCT)_$(SOMC_TARGET_OPERATOR)

ifeq ($(SOMC_PRODUCT_OPERATOR),pdx234_generic)
SOMC_KALAMA_BOARDS += \
		kalama-yodo-pdx234_generic-overlay.dtbo
endif
ifeq ($(SOMC_PLATFORM),yodo)
SOMC_KALAMA_BOARDS += \
		$(call add-overlays, $(KALAMA_SOMC_BOARDS),$(KALAMA_BASE_DTB))
endif

kalama-overlays-dtb-$(CONFIG_ARCH_KALAMA) += $(SOMC_KALAMA_BOARDS) $(KALAMA_BASE_DTB)
dtb-$(CONFIG_ARCH_KALAMA) += $(SOMC_KALAMA_BOARDS) $(KALAMA_BASE_DTB)

always-y	:= $(dtb-y)
subdir-y	:= $(dts-dirs)
clean-files	:= *.dtb *.dtbo
