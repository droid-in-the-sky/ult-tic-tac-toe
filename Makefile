###############################################################################
# EDIT
###############################################################################

SDL_DIR ?= $(error set path to "<ceu-sdl>" repository)
CEU_DIR ?= $(error set path to "<ceu>" repository)

###############################################################################
# DO NOT EDIT
###############################################################################

SRC = src/main.ceu
ARCH_DIR ?= $(SDL_DIR)/arch

_all: all

include $(SDL_DIR)/Makefile
include $(CEU_DIR)/Makefile
