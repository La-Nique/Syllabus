PDF=csci_33500_sp2022_syllabus.pdf
HTML=syllabus.html
open:
	gio open `git remote get-url origin`'#readme'
html:
	pandoc README.md -o $(HTML)
	pandoc README.md -s --metadata title="CSCI 33500: Software Analysis and Design 3" -o $(HTML)
preview-html: html
	gio open $(HTML)
pdf:
	pandoc -f gfm README.md -o $(PDF)
preview-pdf: pdf
	gio open $(PDF)
toc:
	gh-md-toc README.md | xclip -selection clipboard
