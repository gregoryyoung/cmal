#USE_READLINE = 1
LDFLAGS = 

src = $(wildcard *.c)
obj = $(src:.c=.o)


ifeq ($(USE_READLINE), 1)
    LDFLAGS += -lreadline 
    CFLAGS += -DUSE_READLINE=1
endif



step0_repl : $(obj)
	    $(CC) -o $@ $^ $(LDFLAGS)

.PHONY: clean
	clean:
	    rm -f $(obj) step?_repl
