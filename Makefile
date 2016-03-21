CFLAGS  := -g -Wall
SRCS    := $(shell ls *.c)
IDS     := $(patsubst %.c,%,$(SRCS))
TARGETS := $(patsubst %.c,%.exe,$(SRCS))
CLEAN	:= *~ */*~ */_*.input */_*.output

all:	build

.PHONY: build
build: $(TARGETS)

.SUFFIXES: .c .exe
.c.exe:
	gcc $(CFLAGS) -o $@ $<

.PHONY: test
test: build test.bash
	./test.bash $(IDS)

.PHONY: clean
clean:
	rm -f $(CLEAN)

.PHONY: clobber
clobber: clean
	rm -f $(TARGETS)
