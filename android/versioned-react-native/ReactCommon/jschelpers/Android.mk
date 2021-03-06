LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := jschelpers_abi32_0_0

LOCAL_SRC_FILES := \
  JSCHelpers.cpp \
  Unicode.cpp \
  Value.cpp \

LOCAL_C_INCLUDES := $(LOCAL_PATH)/..
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_C_INCLUDES)

LOCAL_CFLAGS := \
  -DLOG_TAG=\"ReactNative\"

LOCAL_CFLAGS += -fexceptions -frtti

LOCAL_SHARED_LIBRARIES := libfolly_json_abi32_0_0 libjsc libglog_abi32_0_0

include $(BUILD_STATIC_LIBRARY)

$(call import-module,folly)
$(call import-module,jsc)
$(call import-module,glog)
$(call import-module,privatedata)

