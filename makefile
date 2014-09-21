SRC = $(wildcard *.markdown)
TXT = $(SRC:.markdown=.txt)
HTML = $(SRC:.markdown=.html)

.PHONY: all, plain, html, clean
.PRECIOUS: $(SRC)

plain all: $(TXT)

html: $(HTML)

clean: $(TXT)
	mv -vt ../awraq_txt $(TXT)

%.txt %.html: %.markdown
	pandoc -R -o $@ $<
