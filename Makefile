#USE_READLINE = 1
LDFLAGS = 

SRC = readline.c 
OBJ = $(SRC:.c=.o)
PRG = step0_repl.c step1_read_print.c #step2_eval.c step3_env.c \
#       step4_if_fn_do.c step5_tco.c step6_file.c step7_quote.c \
#       step8_macros.c step9_try.c stepA_mal.c

OBJS = $(PRG:%.c=%.o)
BINS = $(OBJS:%.o=%)

ifeq ($(USE_READLINE), 1)
    LDFLAGS += -lreadline 
    CFLAGS += -DUSE_READLINE=1
endif

$(BINS) : $(OBJ)
	    $(CC) -o $@ $^ $@.c $(LDFLAGS)

clean:
	    rm -f $(OBJ) $(BINS)
