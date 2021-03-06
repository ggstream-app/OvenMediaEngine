LOCAL_PATH := $(call get_local_path)
include $(DEFAULT_VARIABLES)

LOCAL_STATIC_LIBRARIES := \
	segment_stream

LOCAL_TARGET := segment_publishers

LOCAL_SOURCE_FILES := $(LOCAL_SOURCE_FILES) \
	$(call get_sub_source_list,hls) \
    $(call get_sub_source_list,dash) \
	$(call get_sub_source_list,cmaf)

LOCAL_HEADER_FILES := $(LOCAL_HEADER_FILES) \
	$(call get_sub_header_list,hls) \
	$(call get_sub_header_list,dash) \
	$(call get_sub_header_list,cmaf)

$(call add_pkg_config,srt)

include $(BUILD_STATIC_LIBRARY)
include $(BUILD_SUB_AMS)
