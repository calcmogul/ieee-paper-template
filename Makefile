TARGET := ieee-paper-template.pdf

.PHONY: all
all: $(TARGET)

$(TARGET): $(basename $(TARGET)).tex
	latexmk -pdf $(basename $@)

.PHONY: clean
clean:
	rm -f *.aux *.fdb_latexmk *.fls *.lof *.log *.los *.lot *.toc *.out *.pdf
