LOCAL_PATH             := $(call my-dir)

include $(CLEAR_VARS)

NDK_DEBUG_IMPORTS      := 0
NDK_DEBUG_MODULES      := 0
LOCAL_CFLAGS           := -O2 -DANDROID_NDK -Wno-psabi -mfpu=vfpv3 -mfloat-abi=softfp
LOCAL_MODULE           := S3DClient
LOCAL_MODULE_FILENAME  := libS3DClient
LOCAL_SRC_FILES        := S3DClient.cpp
LOCAL_LDLIBS           := $(APP_PROJECT_LIBPATH)/obj/local/$(TARGET_ARCH_ABI)/libS3DClient_Android.a
LOCAL_LDLIBS           += -L$(APP_PROJECT_LIBPATH)/obj/local/$(TARGET_ARCH_ABI) -lopenal -lssl -lcrypto
LOCAL_LDLIBS           += -lGLESv2 -ldl -llog
include $(BUILD_SHARED_LIBRARY)
