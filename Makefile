INSTALL_TARGET_PROCESSES = SpringBoard

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = libcalypso


dtoim = $(foreach d,$(1),-I$(d))

_IMPORTS =  $(shell /bin/ls -d ./CalypsoActionFramework/*/)
_IMPORTS +=  $(shell /bin/ls -d ./CalypsoActionFramework/*/*/)
_IMPORTS +=  $(shell /bin/ls -d ./CalypsoActionFramework/*/*/*/)
_IMPORTS += $(shell /bin/ls -d ./)
IMPORTS = -I$./CalypsoActionFramework $(call dtoim, $(_IMPORTS))

SOURCES = $(shell find CalypsoActionFramework -name '*.m')
SOURCES += $(shell find CalypsoEventFramework -name '*.m')


Calypso_FILES = CalypsoServer.mm  ${SOURCES}
Calypso_CFLAGS += -fobjc-arc -Wno-deprecated-declarations $(IMPORTS)

Calypso_LDFLAGS += -lsubstrate

include $(THEOS_MAKE_PATH)/tweak.mk


