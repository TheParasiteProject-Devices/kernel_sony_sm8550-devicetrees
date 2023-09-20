vendor := $(srctree)/$(src)

ifneq "$(wildcard $(vendor)/qcom)" ""
#SOMC_DTS_OVERLAY start
        #subdir-y += qcom
#SOMC_DTS_OVERLAY end
endif
#SOMC_DTS_OVERLAY start
subdir-y += sony
#SOMC_DTS_OVERLAY end
