FLAGS   := -Wall
SRCS    := $(shell ls *.cpp)
TARGETS := $(patsubst %.cpp,%,$(SRCS))
CLEAN	:= *~ */*~

all:	build

.PHONY: build
build: $(TARGETS)

.SUFFIXES: .cpp
.cpp:
	g++ $(FLAGS) -o $@ $<

.PHONY: clean
clean:
	rm -f $(CLEAN)

.PHONY: clobber
clobber: clean
	rm -f $(TARGETS)
