#
# flashimage
#

### armbox vuuno4k

flashimage:
	$(MAKE) flash-image-vu-multi-rootfs
	$(TUXBOX_CUSTOMIZE)

ofgimage:
	$(MAKE) ITYPE=ofg flash-image-vu-rootfs
	$(TUXBOX_CUSTOMIZE)

online-image:
	$(MAKE) ITYPE=online flash-image-vu-online
	$(TUXBOX_CUSTOMIZE)

flash-clean:
	echo ""

#
FLASH_BUILD_TMP = $(BUILD_TMP)/image-build
VU_PREFIX       = vuplus/uno4k
VU_INITRD       = $(KERNEL_INITRD)
VU_FR           = echo This file forces the update. > $(FLASH_BUILD_TMP)/$(VU_PREFIX)/force.update

include make/common/vu-linux-image.mk
