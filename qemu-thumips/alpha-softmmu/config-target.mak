# Automatically generated by configure - do not modify
CONFIG_QEMU_INTERP_PREFIX="/usr/gnemul/qemu-alpha"
TARGET_SHORT_ALIGNMENT=2
TARGET_INT_ALIGNMENT=4
TARGET_LONG_ALIGNMENT=8
TARGET_LLONG_ALIGNMENT=8
TARGET_ARCH=alpha
TARGET_ALPHA=y
TARGET_ARCH2=alpha
TARGET_BASE_ARCH=alpha
TARGET_ABI_DIR=alpha
CONFIG_NO_XEN=y
TARGET_PHYS_ADDR_BITS=64
CONFIG_SOFTMMU=y
LIBS+=-lutil -lrbd -lrados -lcurl   -lncurses  -luuid -lpng12   -ljpeg -lsasl2 -lgnutls   -lSDL   -lX11  -laio 
HWDIR=../libhw64
CONFIG_I386_DIS=y
CONFIG_ALPHA_DIS=y
LDFLAGS+=
QEMU_CFLAGS+=
QEMU_INCLUDES+=-I$(SRC_PATH)/linux-headers -I$(SRC_PATH)/tcg -I$(SRC_PATH)/tcg/i386 