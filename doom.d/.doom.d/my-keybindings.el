;;; ~/dotfiles/doom.d/.doom.d/my-keybindings.el -*- lexical-binding: t; -*-

(map! :ne "SPC c L" #'comment-or-uncomment-region)
(map! :ne "SPC c l" #'comment-line)
;; (bind-key "SPC c L" #'comment-or-uncomment-region)
;; (bind-key "SPC c l" #'comment-line)
