default:
	quarto preview

html:
	quarto render

# PDF output with beamer does not work with Quarto, so directly use Pandoc
pdf: slides.pdf
slides.pdf: index.qmd
	pandoc -t beamer --pdf-engine=xelatex --slide-level 2 --template vzg-slides.tex -o $@ $^

