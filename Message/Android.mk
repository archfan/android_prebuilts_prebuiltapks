LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE := Message
LOCAL_CERTIFICATE := platform
LOCAL_OVERRIDES_PACKAGES := messaging

LOCAL_SRC_FILES := presentation-noAnalytics-universal-release-unsigned.apk
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)
include $(BUILD_PREBUILT)
