D_FLAGS   := -de -w
D_SRCS    := $(shell ls *.d)
D_TARGETS := $(patsubst %.d,%,$(D_SRCS))

TARGETS   := $(D_TARGETS)
TEST_TARGETS := $(D_TARGETS) $(shell ls *.rb)

CLEAN	  := *~ */*~ */_*.in */_*.out
CLOBBER	  := *.dSYM

all:	build

.PHONY: build
build: $(TARGETS)

.SUFFIXES: .d
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
