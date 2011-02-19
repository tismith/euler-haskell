.PHONY: clean depends depend

BINFILES = $(patsubst prob%.hs,prob%,$(wildcard prob*.hs))

HC      = ghc
HC_OPTS = -cpp $(EXTRA_HC_OPTS) 

SRCS = $(wildcard *.hs)
OBJS = $(patsubst %.hs,%.o,$(SRCS))

.SUFFIXES : .o .hs .hi .lhs .hc .s

all: $(BINFILES) 

prob%: prob%.o
	$(HC) -o $@ $(HC_OPTS) $^

# Standard suffix rules
.o.hi:
	@:

.lhs.o:
	$(HC) -c $< $(HC_OPTS)

.hs.o:
	$(HC) -c $< $(HC_OPTS)

.o-boot.hi-boot:
	@:

.lhs-boot.o-boot:
	$(HC) -c $< $(HC_OPTS)

.hs-boot.o-boot:
	$(HC) -c $< $(HC_OPTS)

prob7: Primes.o  prob7.hs
	ghc -o $@ prob7.hs Primes.o

prob41: Primes.o  prob41.hs
	ghc -o $@ prob41.hs Primes.o

clean: 
	-rm a.out *.hi *.hc *.o $(BINFILES)

depend: depends
depends:
	$(HC) -M $(HC_OPTS) $(SRCS)

# DO NOT DELETE: Beginning of Haskell dependencies
Primes.o : Primes.hs
prob9.o : prob9.hs
prob8.o : prob8.hs
prob7.o : prob7.hs
prob7.o : Primes.hi
prob6.o : prob6.hs
prob56.o : prob56.hs
prob5.o : prob5.hs
prob48.o : prob48.hs
prob41.o : prob41.hs
prob41.o : Primes.hi
prob4.o : prob4.hs
prob30.o : prob30.hs
prob3.o : prob3.hs
prob28.o : prob28.hs
prob25.o : prob25.hs
prob20.o : prob20.hs
prob2.o : prob2.hs
prob18.o : prob18.hs
prob16.o : prob16.hs
prob15.o : prob15.hs
prob14.o : prob14.hs
prob13.o : prob13.hs
prob12.o : prob12.hs
prob11.o : prob11.hs
prob11-prionic.o : prob11-prionic.hs
prob10.o : prob10.hs
prob1.o : prob1.hs
# DO NOT DELETE: End of Haskell dependencies
