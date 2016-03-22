CFLAGS  := -g -Wall
SRCS    := $(shell ls *.c)
IDS     := $(patsubst %.c,%.exe,$(SRCS)) $(shell ls *.rb)
TARGETS := $(patsubst %.c,%.exe,$(SRCS))
CLEAN	:= *~ */*~ */_*.input */_*.output _test.diff
CLOBBER	:= *.exe.dSYM

all:	build

.PHONY: build
build: $(TARGETS)

.SUFFIXES: .c .exe
.c.exe:
	gcc $(CFLAGS) -o $@ $<

.PHONY: test
test: build
	./test $(IDS)

.PHONY: clean
clean:
	rm -f $(CLEAN)

.PHONY: clobber
clobber: clean
	rm -rf $(TARGETS) $(CLOBBER)
