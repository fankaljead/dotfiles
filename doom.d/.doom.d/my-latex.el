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



;; (cl-defmacro lsp-org-babel-enable (lang)
;;     "Support LANG in org source code block."
;;     (setq centaur-lsp 'lsp-mode)
;;     (cl-check-type lang stringp)
;;     (let* ((edit-pre (intern (format "org-babel-edit-prep:%s" lang)))
;;            (intern-pre (intern (format "lsp--%s" (symbol-name edit-pre)))))
;;       `(progn
;;          (defun ,intern-pre (info)
;;            (let ((file-name (->> info caddr (alist-get :file))))
;;              (unless file-name
;;                (setq file-name (make-temp-file "babel-lsp-")))
;;              (setq buffer-file-name file-name)
;;               (lsp-deferred)))
;;          (put ',intern-pre 'function-documentation
;;               (format "Enable lsp-mode in the buffer of org source block (%s)."
;;                       (upcase ,lang)))
;;          (if (fboundp ',edit-pre)
;;              (advice-add ',edit-pre :after ',intern-pre)
;;            (progn
;;              (defun ,edit-pre (info)
;;                (,intern-pre info))
;;              (put ',edit-pre 'function-documentation
;;                   (format "Prepare local buffer environment for org source block (%s)."
;;                           (upcase ,lang))))))))
;;   (defvar org-babel-lang-list
;;     '("go" "python" "ipython" "c" "cpp" "lua"))
;;   (dolist (lang org-babel-lang-list)
;;     (eval `(lsp-org-babel-enable ,lang)))
