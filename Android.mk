DEBUG   := -D CEU_DEBUG -D DEBUG
ANDROID := -D __ANDROID__ -D ANDROID

LOCAL_C_FLAGS := $(DEBUG) $(ANDROID)

LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := main

SDL_PATH       := android-project/jni/SDL
SDL_image_PATH := android-project/jni/SDL_image

LOCAL_C_INCLUDES := $(LOCAL_PATH)/$(SDL_PATH)/include \
                    $(LOCAL_PATH)/$(SDL_image_PATH)

LOCAL_SRC_FILES := $(SDL_PATH)/src/main/android/SDL_android_main.cpp \
    main.c

LOCAL_SHARED_LIBRARIES := SDL2 SDL2_image

ifdef DEBUG
LOCAL_LDLIBS := -llog
endif

include $(BUILD_SHARED_LIBRARY)

$(shell (cd $(LOCAL_PATH) ; ceu main.ceu))

