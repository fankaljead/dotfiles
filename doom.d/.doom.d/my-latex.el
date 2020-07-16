;;; ~/.doom.d/my-latex.el -*- lexical-binding: t; -*-
;;
;; #+LATEX_COMPILER: xelatex
;; #+LATEX_HEADER: \usepackage{ctex}
;; (setq org-latex-to-pdf-process
(setq org-latex-to-pdf-process
  '("xelatex -interaction nonstopmode %f"
     "xelatex -interaction nonstopmode %f")) ;

(setq lsp-clients-emmy-lua-jar-path "/home/zxh/dotfiles/jar/EmmyLua-LS-all.jar")

;; org mode 导出代码高亮
;;(setq org-latex-listings 'minted)
;;(add-to-list 'org-latex-packages-alist '("" "minted"))
