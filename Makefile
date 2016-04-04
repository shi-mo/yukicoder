C_FLAGS   := -g -Wall
C_SRCS    := $(shell ls *.c)
C_TARGETS := $(patsubst %.c,%.exe,$(C_SRCS))

D_FLAGS   := -de -w
D_SRCS    := $(shell ls *.d)
D_TARGETS := $(patsubst %.d,%,$(D_SRCS))

TARGETS   := $(C_TARGETS) $(D_TARGETS)
TEST_TARGETS := $(TARGETS) $(shell ls *.rb)

CLEAN	  := *~ */*~ */_*.in */_*.out _test.diff
CLOBBER	  := *.dSYM

all:	build

.PHONY: build
build: $(TARGETS)

.SUFFIXES: .c .exe .d
.c.exe:
	gcc $(C_FLAGS) -o $@ $<

.d:
	dmd $(D_FLAGS) $<
	rm $@.o


.PHONY: test
test: build
	./test $(TEST_TARGETS)

.PHONY: clean
clean:
	rm -f $(CLEAN)

.PHONY: clobber
clobber: clean
	rm -rf $(TARGETS) $(CLOBBER)
