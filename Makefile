CC := gcc
LIBS = $(shell gnustep-config --base-libs)
FLAGS = $(shell gnustep-config --objc-flags)

.PHONY: clean

all: 
	$(CC) $(FLAGS) -o main main.m Input.m Output.m Birthday.m Zodiac.m $(LIBS)

clean:
	rm *.o *.d

