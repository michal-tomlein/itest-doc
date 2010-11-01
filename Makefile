usage:
	@echo "Targets:"
	@echo "init - initialises and updates po files"
	@echo "gen-latex - generates translated LaTeX files"
	@echo "clean - clean up"

init:
	touch po/itest.pot
	po4a --force po4a.cfg

gen-latex:
	po4a po4a.cfg

gen-pdf:

gen-html:

clean:
	@/bin/rm -f  `find . -iname '*~'`
	@/bin/rm -f  `find latex/?? -type f \
			-and \( -iname '*.aux' \
			-or -iname '*.log' \
			-or -iname '*.out' \
			-or -iname '*.toc' \)`
	@/bin/rm -fr `find latex/?? -type d -iname 'auto'`
