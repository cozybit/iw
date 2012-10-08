#
# Copyright (C) 2008 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
#

LOCAL_PATH := $(call my-dir)

INCLUDES = $(LOCAL_PATH)
INCLUDES += external/libnl-headers
CFLAGS += -DCONFIG_LIBNL20

OBJS =
#OBJS += bitrate.c
OBJS += connect.c
OBJS += cqm.c
OBJS += event.c
OBJS += genl.c
OBJS += ibss.c
OBJS += info.c
OBJS += interface.c
OBJS += iw.c
OBJS += link.c
OBJS += mesh.c
OBJS += mpath.c
OBJS += offch.c
OBJS += phy.c
OBJS += ps.c
OBJS += reason.c
OBJS += reg.c
#OBJS += roc.c
OBJS += scan.c
OBJS += sections.c
OBJS += station.c
OBJS += status.c
OBJS += survey.c
OBJS += util.c
OBJS += version.c
#OBJS += wowlan.c

########################
include $(CLEAR_VARS)
LOCAL_MODULE := iw
#LOCAL_SHARED_LIBRARIES := libc libcutils 
LOCAL_CFLAGS = $(CFLAGS)
LOCAL_STATIC_LIBRARIES += libnl_2
LOCAL_SRC_FILES := $(OBJS)
LOCAL_C_INCLUDES := $(INCLUDES)
LOCAL_MODULE_TAGS := debug
include $(BUILD_EXECUTABLE)
