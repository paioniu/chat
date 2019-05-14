#
#
#
#
#

TGT := chat
DIRS := 
SRCS := $(wildcard *.c) $(foreach dir,$(DIRS), $(wildcard $(dir)/*.c))
OBJS := $(patsubst %.c,%.o,$(SRCS))
LFLAGS := -L../mezza/ -lmezza -lpthread
CFLAGS := 

default: $(TGT)

$(TGT): $(OBJS)
	gcc -o $(TGT) $(OBJS) $(LFLAGS)

%.o: %.c
	gcc -c -o $@ $< $(CFLAGS)

clear:
	rm -fR $(TGT)
	rm -fR $(OBJS)

