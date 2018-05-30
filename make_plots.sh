#!/bin/bash

cat plot.default.cfg > plot.cfg
pdflatex sigma_enu_plot.master.tex
mv sigma_enu_plot.master.pdf sigma_enu_NEUT.5.3.6_numuCC_QELCombined.pdf

cat plot.default.cfg | sed 's:toggletrue{QELCombined}:togglefalse{QELCombined}:g' > plot.cfg
pdflatex sigma_enu_plot.master.tex
mv sigma_enu_plot.master.pdf sigma_enu_NEUT.5.3.6_numuCC_QELSeparate.pdf
