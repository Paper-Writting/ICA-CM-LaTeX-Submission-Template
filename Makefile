.PHONY: all full abstract clean count
all: full abstract
full:
	latexmk -pdf main.tex
abstract:
	latexmk -pdf extended-abstract.tex
count:
	@echo 'Approximate text-only counts; reconcile official exclusions manually:'
	texcount -inc -sum main.tex
	texcount -inc -sum extended-abstract.tex
clean:
	latexmk -C main.tex
	latexmk -C extended-abstract.tex
