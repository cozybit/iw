LOCAL_PATH := $(call my-dir)
IW_SOURCE_DIR := $(LOCAL_PATH)

include $(CLEAR_VARS)

OBJS = iw.o genl.o event.o info.o phy.o \
	interface.o ibss.o station.o survey.o util.o \
	mesh.o mpath.o scan.o reg.o version.o \
	reason.o status.o connect.o link.o offch.o ps.o cqm.o \
	bitrate.o wowlan.o coalesce.o roc.o p2p.o hwsim.o

OBJS += sections.o

LOCAL_SRC_FILES := $(patsubst %.o,%.c,$(OBJS)) android-nl.c

LOCAL_C_INCLUDES := \
	$(LOCAL_PATH) \
	external/libnl-headers/

LOCAL_CFLAGS += -DCONFIG_LIBNL20
LOCAL_LDFLAGS := -Wl,--no-gc-sections
LOCAL_SHARED_LIBRARIES := libnl_2
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_PATH := $(TARGET_OUT_OPTIONAL_EXECUTABLES)
LOCAL_MODULE := iw

$(IW_SOURCE_DIR)/version.c:
	$(IW_SOURCE_DIR)/version.sh $(IW_SOURCE_DIR)/version.c

include $(BUILD_EXECUTABLE)
