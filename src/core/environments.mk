# BUILD_ROOT가 .으로 시작할 경우 상대 경로로 변경한다
BUILD_OUTPUT_ROOT := $(strip $(patsubst ./%, %, $(BUILD_ROOT)/$(CONFIG_OUTPUT_DIRECTORY)))
BUILD_OBJECT_ROOT := $(strip $(patsubst ./%, %, $(BUILD_ROOT)/$(CONFIG_OBJECT_DIRECTORY)))
BUILD_OUTPUT_DIRECTORY := $(BUILD_OUTPUT_ROOT)/$(BUILD_METHOD)
BUILD_OBJECT_DIRECTORY := $(BUILD_OBJECT_ROOT)/$(BUILD_METHOD)

BUILD_PROJECTS_DIRECTORY := $(strip $(patsubst ./%, %, $(BUILD_ROOT)/projects))

BUILD_OBJECTS_DIRECTORY := $(BUILD_OBJECT_DIRECTORY)/objs
BUILD_STATIC_LIBRARIES_DIRECTORY := $(BUILD_OBJECT_DIRECTORY)/static
BUILD_PREBUILT_LIBRARIES_DIRECTORY := $(BUILD_OBJECT_DIRECTORY)/prebuilt

CLEAR_VARIABLES := $(BUILD_SYSTEM_DIRECTORY)/clear_variables.mk
DEFAULT_VARIABLES := $(BUILD_SYSTEM_DIRECTORY)/default_variables.mk
PREPARE_TO_BUILD := $(BUILD_SYSTEM_DIRECTORY)/prepare_to_build.mk
BUILD_STATIC_LIBRARY := $(BUILD_SYSTEM_DIRECTORY)/build_static_library.mk
BUILD_SHARED_LIBRARY := $(BUILD_SYSTEM_DIRECTORY)/build_shared_library.mk
BUILD_EXECUTABLE := $(BUILD_SYSTEM_DIRECTORY)/build_executable.mk
BUILD_PREBUILT_LIBRARY := $(BUILD_SYSTEM_DIRECTORY)/build_prebuilt_library.mk
BUILD_OBJECTS := $(BUILD_SYSTEM_DIRECTORY)/build_objects.mk
BUILD_DEPENDENCY := $(BUILD_SYSTEM_DIRECTORY)/build_dependency.mk
BUILD_SUB_AMS := $(BUILD_SYSTEM_DIRECTORY)/build_sub_ams.mk

BUILD_DIRECTORIES_TO_CLEAN := \
	$(BUILD_OBJECT_ROOT)/DEBUG \
	$(BUILD_OBJECT_ROOT)/RELEASE

BUILD_DIRECTORIES_TO_PREPARE := \
	$(BUILD_OUTPUT_DIRECTORY) \
	$(BUILD_OBJECT_DIRECTORY) \
	$(BUILD_OBJECTS_DIRECTORY) \
	$(BUILD_STATIC_LIBRARIES_DIRECTORY)

