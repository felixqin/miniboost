LOCAL_PATH:=$(call my-dir)
########################################
include $(CLEAR_VARS)
LOCAL_MODULE:=libminiboost.a
LOCAL_SRC_FILES:=$(call find-local-source-files,atomic/src chrono/src date_time/src/gregorian date_time/src/posix_time exception/src regex/src smart_ptr/src system/src thread/src thread/src/pthread)

LOCAL_CFLAGS:=-I$(LOCAL_PATH)/../
LOCAL_CFLAGS+=-DBOOST_THREAD_BUILD_LIB

include $(BUILD_STATIC_LIBRARY)

# move target to $(INTERMEDIATE_DIR)
$(INTERMEDIATE_DIR)/$(LOCAL_MODULE): $(INTERMEDIATE_DIR)/$(LOCAL_PATH)/$(LOCAL_MODULE)
	mv $^ $@

########################################

