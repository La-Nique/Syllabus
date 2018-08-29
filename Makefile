open:
	gio open `git remote get-url origin`'#readme'
html:
	pandoc README.md -o README.html
preview-html: html
	gio open README.html
pdf:
	pandoc -f markdown_github README.md -o csci_40500-01-77100-01_fa2018_syllabus.pdf
preview-pdf: pdf
	xdg-open csci_40500-01-77100-01_fa2018_syllabus.pdf
