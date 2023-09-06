# requires https://pypi.org/project/pandoc-include/

PDFLATEX=pdflatex
PANDOC=pandoc
MMDC=mmdc
INKSCAPE=inkscape
TEMPLATE=./temp/template.tex
THEME=./temp/code.theme

PANDOC_PARAMS=\
		--embed-resources \
		--standalone \
		--template=$(TEMPLATE) \
		--metadata-file=./meta.yml \
		--defaults=./defaults.yml \
		--filter=pandoc-include \
		--resource-path=./chapters/ \
		--to=beamer

PHP_FILES=$(wildcard examples/**/*.php examples/*.php)

MMD_FILES=$(wildcard media/*.mmd)
MMD_PDF_FILES=$(foreach wrd,$(MMD_FILES),$(wrd).pdf)

TEX_FILES=$(wildcard media/*.tex)
TEX_PDF_FILES=$(foreach wrd,$(TEX_FILES),$(wrd).pdf)

GPL_FILES=$(wildcard media/*.gpl)
GPL_SVG_PDF_FILES=$(foreach wrd,$(GPL_FILES),$(wrd).svg.pdf)

SVG_FILES=$(wildcard media/*.svg)
SVG_PDF_FILES=$(foreach wrd,$(SVG_FILES),$(wrd).pdf)

EPS_FILES=$(wildcard media/*.eps)
EPS_PDF_FILES=$(foreach wrd,$(EPS_FILES),$(wrd).pdf)

CHAPTERS=$(wildcard ./chapters/*.md)
INCLUDES=$(wildcard ./includes/*)
CONFIGS=$(wildcard ./*.yml)
PRESENTATION=./Presentation.pdf
HANDOUT=./Handout.pdf
TEMP=./temp

.PHONY: all
all: init $(PRESENTATION)
media/%.mmd.pdf: media/%.mmd
	$(MMDC) --input $^ --output "$@" --backgroundColor transparent --pdfFit --width 600 --height 600 --theme neutral
media/%.tex.pdf: media/%.tex
	cp $^ $(TEMP)/temp.tex
	$(PDFLATEX) -interaction=nonstopmode -output-directory=$(TEMP) $(TEMP)/temp.tex
	mv $(TEMP)/temp.pdf "$@"
	rm -f $(TEMP)/temp.*
media/%.gpl.svg.pdf: media/%.gpl
	cat includes/plot.gpl "$^" | gnuplot > "$^.svg"
	inkscape --export-area-drawing --export-filename="$@" "$^.svg"
	rm "$^.svg"
media/%.svg.pdf: media/%.svg
	inkscape --export-area-drawing --export-filename="$@" "$^"
media/%.eps.pdf: media/%.eps
	epstopdf "$^" "$@"
$(PRESENTATION): $(TEMPLATE) $(THEME) $(MMD_PDF_FILES) $(TEX_PDF_FILES) $(GPL_SVG_PDF_FILES) $(SVG_PDF_FILES) $(EPS_PDF_FILES) $(PHP_FILES) $(CHAPTERS)
	$(PANDOC) \
		$(PANDOC_PARAMS) \
		--output=$(PRESENTATION) \
		--to=beamer \
		$(CHAPTERS)
$(HANDOUT): $(PRESENTATION) $(TEMPLATE) $(THEME) $(MMD_PDF_FILES) $(TEX_PDF_FILES) $(GPL_SVG_PDF_FILES)$ (SVG_PDF_FILES) $(EPS_PDF_FILES) $(PHP_FILES) $(CHAPTERS)
	$(PANDOC) \
		$(PANDOC_PARAMS) \
		--output=$(HANDOUT) \
		--to=beamer \
		--metadata=handout:true \
		$(CHAPTERS)
.PHONY: init
init:
	mkdir -p $(TEMP)
$(THEME): $(INCLUDES) $(CONFIGS)
	$(PANDOC) --print-highlight-style haddock | jq '.["text-styles"].Other["text-color"] = null' > $(THEME)
$(TEMPLATE): $(INCLUDES) $(CONFIGS)
	$(PANDOC) --print-default-template=beamer | cat ./includes/template.tex - > $(TEMPLATE)
.PHONY: clean
clean:
	rm -rf $(TEMP)
	rm -f media/*.mmd.pdf
	rm -f media/*.tex.pdf
	rm -f media/*.svg.pdf
	rm -f media/*.eps.pdf
	rm -f $(PRESENTATION)
	rm -f $(HANDOUT)
