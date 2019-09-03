LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE := BrowserWebView
LOCAL_CERTIFICATE := $(DEFAULT_SYSTEM_DEV_CERTIFICATE)
LOCAL_MULTILIB := both
LOCAL_OVERRIDES_PACKAGES := webview
LOCAL_REQUIRED_MODULES := \
        libwebviewchromium_loader \
        libwebviewchromium_plat_support

	LOCAL_SRC_FILES := arm64_SystemWebView.apk

LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)
include $(BUILD_PREBUILT)
