all: gapminder.tsv

clean:
	rm -f gapminder.tsv

gapminder.tsv:
	Rscript -e 'download.file("https://github.com/jennybc/gapminder/blob/master/inst/extdata/gapminder.tsv", destfile="gapminder.tsv")'