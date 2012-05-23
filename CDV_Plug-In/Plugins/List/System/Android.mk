LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

LOCAL_LDLIBS := -llog

LOCAL_MODULE := sys
LOCAL_SRC_FILES := Console.cpp GC.cpp gcptr.cpp Object.cpp Random.cpp String.cpp
LOCAL_LDFLAGS += $(NDK_ROOT)/sources/cxx-stl/gnu-libstdc++/libs/armeabi/libgnustl_static.a
LOCAL_CPPFLAGS += -fexceptions

include $(BUILD_SHARED_LIBRARY)