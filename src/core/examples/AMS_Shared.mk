LOCAL_PATH := $(call get_local_path)
include $(DEFAULT_VARIABLES)

LOCAL_TARGET := test

include $(BUILD_SHARED_LIBRARY)
