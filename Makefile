PDF=csci_40500-01-77100-01_sp2020_syllabus
open:
	gio open `git remote get-url origin`'#readme'
html:
	pandoc README.md -o README.html
preview-html: html
	gio open README.html
pdf:
	pandoc -f gfm README.md -o $(PDF).pdf
preview-pdf: pdf
	gio open $(PDF).pdf
toc:
	gh-md-toc README.md | xclip -selection clipboard
