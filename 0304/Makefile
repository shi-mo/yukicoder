CPP_FLAGS   := -g -Wall
CPP_SRCS    := $(shell ls *.cpp)
CPP_TARGETS := $(patsubst %.cpp,%,$(CPP_SRCS))

D_FLAGS   := -de -w
D_SRCS    := $(shell ls *.d)
D_TARGETS := $(patsubst %.d,%,$(D_SRCS))

TARGETS   := $(CPP_TARGETS) $(D_TARGETS)
TEST_TARGETS := $(D_TARGETS) $(shell ls *.rb)

CLEAN	  := *~ */*~ */_*.input */_*.output
CLOBBER	  := *.dSYM

all:	build

.PHONY: build
build: $(TARGETS)

.SUFFIXES: .cpp .d
.cpp:
	g++ $(CPP_FLAGS) -o $@ $<

.d:
	dmd $(D_FLAGS) $<
	rm $@.o


.PHONY: test
test: build
	./test

.PHONY: clean
clean:
	rm -f $(CLEAN)

.PHONY: clobber
clobber: clean
	rm -rf $(TARGETS) $(CLOBBER)
