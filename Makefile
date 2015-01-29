default: all

all: resume

resume: keeferdavies-resume.pdf

keeferdavies-resume.pdf: resume/keeferdavies-resume.tex
	cd resume && pdflatex keeferdavies-resume.tex && pdflatex keeferdavies-resume.tex
	mv resume/keeferdavies-resume.pdf keeferdavies-resume.pdf

clean:
	rm keeferdavies-resume.pdf resume/*.aux resume/*.log
