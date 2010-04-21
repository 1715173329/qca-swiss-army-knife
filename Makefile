ifdef ATHEROS
CFLAGS += -DATHEROS
ATHEROS_DEPS += ar9300_osprey20.ini
endif

initvals: ar5008_initvals.h ar9001_initvals.h ar9002_initvals.h ar9003_initvals.h $(ATHEROS_DEPS) initvals.c
	gcc $(CFLAGS) -o $@ $@.c

all: initvals

clean:
	rm -f initvals
