APP_ABI := armeabi-v7a arm64-v8a x86 x86_64
APP_PLATFORM := android-21
APP_STL := c++_static
APP_CPPFLAGS := -std=c++17
APP_CFLAGS := -Wno-error=format-security

APP_CFLAGS     := -Wall -Wextra
APP_CFLAGS     += -fno-stack-protector -fomit-frame-pointer
APP_CFLAGS     += -Wno-builtin-macro-redefined -D__FILE__=__FILE_NAME__
APP_CONLYFLAGS := -std=c18
APP_LDFLAGS    := -Wl,--exclude-libs,ALL

ifneq ($(NDK_DEBUG),1)
APP_CFLAGS     += -Oz -flto
APP_CFLAGS     += -Wno-unused -Wno-unused-parameter -Werror
APP_CFLAGS     += -fvisibility=hidden -fvisibility-inlines-hidden
APP_CFLAGS     += -fno-unwind-tables -fno-asynchronous-unwind-tables
APP_LDFLAGS    +=  -flto -Wl,--gc-sections -Wl,--strip-all
endif
