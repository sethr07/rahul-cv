SRC=src
BIN=bin

# CVs
CV=cv.tex

.PHONY: build-cv clean
build-cv:
	@if [ -z "$(COMPANY)" ]; then \
		echo "Error: Please provide a company name using COMPANY=<name>"; \
		echo "Usage: make build-cv COMPANY=CompanyName"; \
		exit 1; \
	fi
	@echo "Building CV for $(COMPANY)..."
	@cd $(SRC) && pdflatex $(CV)
	@cd $(SRC) && mv cv.pdf ../$(BIN)/RahulSeth-CV-$(COMPANY).pdf
	@echo "CV built successfully as RahulSeth-CV-$(COMPANY).pdf in $(BIN) directory"

clean:
	@echo "Cleaning LaTeX auxiliary files from $(SRC) directory..."
	@cd $(SRC) && rm -f *.aux *.log *.out *.toc *.fdb_latexmk *.fls *.synctex.gz *.bbl *.blg *.bcf *.run.xml
	@echo "Clean completed."
