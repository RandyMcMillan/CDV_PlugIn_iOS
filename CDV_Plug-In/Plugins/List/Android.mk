LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)
#include $(call all-subdir-makefiles)

LOCAL_LDLIBS := -llog

LOCAL_MODULE := list
LOCAL_SRC_FILES := List.cpp Program.cpp Utils.cpp Node.cpp
LOCAL_STATIC_LIBRARIES := sys

include $(BUILD_SHARED_LIBRARY)