LILYPONDFILES = $(wildcard *.ly)
PDFS = $(LILYPONDFILES:.ly=.pdf)

all: $(PDFS)

%.pdf: %.ly
	lilypond $<

clean:
	@-rm -f $(PDFS) *~
