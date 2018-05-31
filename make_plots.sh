#!/bin/bash

cat plot.default.cfg > plot.cfg
pdflatex sigma_enu_plot.master.tex
mv sigma_enu_plot.master.pdf sigma_enu_NEUT.5.3.6_numuCC_QELCombined_ND280SKOsc.pdf

cat plot.default.cfg | sed 's:toggletrue{QELCombined}:togglefalse{QELCombined}:g' > plot.cfg
pdflatex sigma_enu_plot.master.tex
mv sigma_enu_plot.master.pdf sigma_enu_NEUT.5.3.6_numuCC_QELSeparate_ND280SKOsc.pdf

cat plot.default.cfg | sed 's:toggletrue{XSecIsJustCC}:togglefalse{XSecIsJustCC}:g' > plot.cfg
pdflatex sigma_enu_plot.master.tex
mv sigma_enu_plot.master.pdf sigma_enu_NEUT.5.3.6_numuNC_ND280SKOsc.pdf

cat plot.default.cfg | sed 's:toggletrue{XSecIsJustCC}:togglefalse{XSecIsJustCC}:g' | sed 's:togglefalse{XSecIsCCNC}:toggletrue{XSecIsCCNC}:g' > plot.cfg
pdflatex sigma_enu_plot.master.tex
mv sigma_enu_plot.master.pdf sigma_enu_NEUT.5.3.6_numuCCNC_ND280SKOsc.pdf

cat plot.default.cfg | sed 's:toggletrue{FluxIsT2KOnly}:togglefalse{FluxIsT2KOnly}:g' > plot.cfg
pdflatex sigma_enu_plot.master.tex
mv sigma_enu_plot.master.pdf sigma_enu_NEUT.5.3.6_numuCC_fluxes.pdf

cat plot.default.cfg | sed 's:toggletrue{FluxIsT2KOnly}:togglefalse{FluxIsT2KOnly}:g' | sed 's:togglefalse{IsAntiNumu}:toggletrue{IsAntiNumu}:g' > plot.cfg
pdflatex sigma_enu_plot.master.tex
mv sigma_enu_plot.master.pdf sigma_enu_NEUT.5.3.6_numubarCC_fluxes.pdf

cat plot.default.cfg | sed 's:toggletrue{IsT2KOsc}:togglefalse{IsT2KOsc}:g' > plot.cfg
pdflatex sigma_enu_plot.master.tex
mv sigma_enu_plot.master.pdf sigma_enu_NEUT.5.3.6_numuCC_T2KWSB.pdf

cat plot.default.cfg | sed 's:toggletrue{IsT2KOsc}:togglefalse{IsT2KOsc}:g' | sed 's:togglefalse{IsAntiNumu}:toggletrue{IsAntiNumu}:g' > plot.cfg
pdflatex sigma_enu_plot.master.tex
mv sigma_enu_plot.master.pdf sigma_enu_NEUT.5.3.6_numubarCC_T2KWSB.pdf

cat plot.default.cfg | sed 's:toggletrue{IsT2KOsc}:togglefalse{IsT2KOsc}:g' | sed 's:togglefalse{IsAntiNumu}:toggletrue{IsAntiNumu}:g' | sed 's:togglefalse{WSBxTen}:toggletrue{WSBxTen}:g' > plot.cfg
pdflatex sigma_enu_plot.master.tex
mv sigma_enu_plot.master.pdf sigma_enu_NEUT.5.3.6_numubarCC_T2KWSBx10.pdf

cat plot.default.cfg | sed 's:toggletrue{IsT2KOsc}:togglefalse{IsT2KOsc}:g' | sed 's:togglefalse{WSBxTen}:toggletrue{WSBxTen}:g' > plot.cfg
pdflatex sigma_enu_plot.master.tex
mv sigma_enu_plot.master.pdf sigma_enu_NEUT.5.3.6_numuCC_T2KWSBx10.pdf


cat plot.default.cfg | sed 's:toggletrue{IsT2KOsc}:togglefalse{IsT2KOsc}:g' | sed 's:togglefalse{IsAntiNumu}:toggletrue{IsAntiNumu}:g' | sed 's:togglefalse{WSBxTen}:toggletrue{WSBxTen}:g' | sed 's:toggletrue{XSecIsTrueMode}:togglefalse{XSecIsTrueMode}:g' > plot.cfg
pdflatex sigma_enu_plot.master.tex
mv sigma_enu_plot.master.pdf sigma_enu_NEUT.5.3.6_numubarCC_FSTopology_T2KWSBx10.pdf
