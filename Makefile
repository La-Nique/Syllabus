PDF=csci_33500_sp2022_syllabus.pdf
MD=syllabus.md
HTML=syllabus.html
open:
	gio open `git remote get-url origin`
html:
	pandoc $(MD) -o $(HTML)
	pandoc $(MD) -s --metadata title="CSCI 33500: Software Analysis and Design 3" -o $(HTML)
preview-html: html
	gio open $(HTML)
pdf:
	pandoc -f gfm $(MD) -o $(PDF)
preview-pdf: pdf
	gio open $(PDF)
toc:
	gh-md-toc $(MD) | xclip -selection clipboard
