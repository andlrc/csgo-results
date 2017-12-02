all:	matches
.PHONY:	all

results.json:	scrape-results
	./scrape-results > results.json.tmp
	mv results.json.tmp results.json

matches:	results.json
	-mkdir matches
	./scrape-matches
.PHONY:	matches

dependencies:
	pacman -S python-beautifulsoup4 python-urllib3 python-certifi
.PHONY:	dependencies

clean:
	-rm *.tmp
.PHONY:	clean
