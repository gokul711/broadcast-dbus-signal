BIN = mdbus
CFLAGS = -Wall
CFLAGS += $(shell pkg-config --cflags --libs dbus-glib-1)
SOURCES = main.c

default: $(SOURCES)
	gcc  $(SOURCES) $(CFLAGS) -o $(BIN)

clean:
	rm -f $(BIN)

.PHONY: default clean
