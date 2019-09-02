LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE := Browser
LOCAL_CERTIFICATE := platform
LOCAL_MULTILIB := both
LOCAL_OVERRIDES_PACKAGES := Jelly

ifeq ($(TARGET_CPU_ABI), arm64-v8a)
	LOCAL_SRC_FILES := arm64_ChromeModernPublic.apk
else
	LOCAL_SRC_FILES := arm_ChromeModernPublic.apk
endif

LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)
include $(BUILD_PREBUILT)
