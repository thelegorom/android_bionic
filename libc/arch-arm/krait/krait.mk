ifeq ($(TARGET_USE_KINGFISHER_OPTIMIZATION),true)
  $(call libc-add-cpu-variant-src,MEMCPY,arch-arm/cortex-a9/bionic/memcpy.S)
else
  $(call libc-add-cpu-variant-src,MEMCPY,arch-arm/krait/bionic/memcpy.S)
endif
$(call libc-add-cpu-variant-src,MEMSET,arch-arm/krait/bionic/memset.S)
$(call libc-add-cpu-variant-src,STRCMP,arch-arm/krait/bionic/strcmp.S)
$(call libc-add-cpu-variant-src,MEMMOVE,arch-arm/krait/bionic/memmove.S)
$(call libc-add-cpu-variant-src,__STRCAT_CHK,arch-arm/krait/bionic/__strcat_chk.S)
$(call libc-add-cpu-variant-src,__STRCPY_CHK,arch-arm/krait/bionic/__strcpy_chk.S)
# Use cortex-a15 versions of strcat/strcpy/strlen.
$(call libc-add-cpu-variant-src,STRCAT,arch-arm/cortex-a15/bionic/strcat.S)
$(call libc-add-cpu-variant-src,STRCPY,arch-arm/cortex-a15/bionic/strcpy.S)
$(call libc-add-cpu-variant-src,STRLEN,arch-arm/cortex-a15/bionic/strlen.S)
$(call libc-add-cpu-variant-src,MEMMOVE,arch-arm/krait/bionic/memmove.S)

#include bionic/libc/arch-arm/generic/generic.mk
