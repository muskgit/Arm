LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_ARM_MODE := arm

LOCAL_MODULE :=Hello

LOCAL_SRC_FILES := Hello.c

LOCAL_C_INCLUDES := $(LOCAL_PATH)/include

LOCAL_LDLIBS := -L$(SYSROOT)/usr/lib -llog

include $(BUILD_EXECUTABLE) #指定编译类型为可执行文件(自带main函数入口)




#LOCAL_PATH := $(call my-dir)
#include $(CLEAR_VARS)
#LOCAL_MODULE    := leoric
#LOCAL_SRC_FILES := leoric.c
#LOCAL_C_INCLUDES := $(LOCAL_PATH)/include
#LOCAL_LDLIBS := -L$(SYSROOT)/usr/lib -llog
#include $(BUILD_SHARED_LIBRARY) #指定编译类型为动态链接库文件(没有main函数入口)