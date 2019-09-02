LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE := eDrive
LOCAL_CERTIFICATE := platform
LOCAL_PRIVILEGED_MODULE := true


ifeq ($(PLATFORM_SDK_VERSION), 25)
  LOCAL_SRC_FILES := foundation.e.drive.alpha-1-build-n-19-07-19T1145-release-unsigned.apk
else
  LOCAL_SRC_FILES := foundation.e.drive.alpha-1-build-o-19-07-19T1143-release-unsigned.apk
endif

LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)
include $(BUILD_PREBUILT)
