pdf:
	pandoc -f markdown_github README.md -o csci_40500-01_sp2017_syllabus.pdf
preview: pdf
	xdg-open csci_40500-01_sp2017_syllabus.pdf
open: pdf
	xdg-open `git remote get-url origin`'#readme'
