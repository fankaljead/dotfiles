;;; ~/.doom.d/my-latex.el -*- lexical-binding: t; -*-
;;
;; #+LATEX_COMPILER: xelatex
;; #+LATEX_HEADER: \usepackage{ctex}
;; (setq org-latex-to-pdf-process
(setq org-latex-to-pdf-process
  '("xelatex -interaction nonstopmode %f"
     "xelatex -interaction nonstopmode %f")) ;
