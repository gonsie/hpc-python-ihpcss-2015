
PYTHON:=python2

SITE_PACKAGES:=python2.7/site-packages
NUMPY_INCLUDE:=$(BWP_NUMPY_LIBRARY_PATH)/$(SITE_PACKAGES)/numpy/core/include

CYTHON:=cython
CYTHON_FLAGS:=-2 --embed=main -a
CYTHON_FLAGS:=$(CYTHON_FLAGS) -I$(BWP_MPI4PY_LIBRARY_PATH)/$(SITE_PACKAGES)

CC:=cc
CFLAGS:=-O3 -I$(BWP_INTERP_INCLUDE_PATH)/python2.7
CFLAGS:=$(CFLAGS) -I$(NUMPY_INCLUDE)

LDFLAGS:=-L$(BWP_INTERP_LIBRARY_PATH)
LIBS:=-lm -lpython2.7

export OMP_NUM_THREADS:=16

LAUNCHER:=aprun
LAUNCHER_FLAGS:=-n $(NUM_NODES) -N 1 -d $(OMP_NUM_THREADS)

all: build

