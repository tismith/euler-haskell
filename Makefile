.PHONY: clean

BINFILES = $(patsubst prob%.hs,prob%,$(wildcard *.hs))

all: $(BINFILES)

clean: 
	-rm a.out *.hi *.o $(BINFILES)

prob%: prob%.hs
	ghc -o $@ $<

