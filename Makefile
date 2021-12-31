CC = gcc
CFLAGS = -g -Wall -std=c99
LDFLAGS = -ledit

# Control the build verbosity
ifeq ("$(VERBOSE)","1")
    Q :=
    VECHO = @true
else
    Q := @
    VECHO = @printf
endif

TARGET = prompt
OBJS := prompt.o

$(TARGET): $(OBJS)
	$(VECHO) "  LD\t$@\n"
	$(Q)$(CC) $(LDFLAGS) -o $@ $^
%.o: %.c
	$(VECHO) "  CC\t$@\n"
	$(Q)$(CC) -o $@ $(CFLAGS) -c $<

clean:
	-rm -r $(TARGET) $(OBJS)

.PNOHY: clean
