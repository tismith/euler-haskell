.PHONY: clean

BINFILES = $(patsubst prob%.hs,prob%,$(wildcard prob*.hs))

all: $(BINFILES) 

Primes.o: Primes.hs
	ghc -c Primes.hs

prob7: Primes.o  prob7.hs
	ghc -o $@ prob7.hs Primes.o

prob41: Primes.o  prob41.hs
	ghc -o $@ prob41.hs Primes.o

clean: 
	-rm a.out *.hi *.hc *.o $(BINFILES)

prob%: prob%.hs
	ghc  -o $@ $<

