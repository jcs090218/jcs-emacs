;;; jcs-basic-mode.el --- BASIC mode. -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:


(require 'basic-mode)
(defun jcs-basic-mode-hook ()
  "Hook for `basic-mode'."

  ;; Abbrevation expansion
  (abbrev-mode 1)

  ;; enable the stuff you want for Emacs Lisp here
  (electric-pair-mode 1)

  ;; highlight URL and clickable.
  (goto-address-mode 1)

  ;; Auto highlight the same word.
  (auto-highlight-symbol-mode t)

  (defun jcs-basic-script-format ()
    "Format the given file as a Basic file."
    (when (jcs-is-current-file-empty-p)
      (jcs-insert-basic-template)))

  (when buffer-file-name
    (cond ((file-exists-p buffer-file-name) t)
          ((string-match "[.]bas" buffer-file-name) (jcs-basic-script-format))
          ))

  ;; BASIC key bindings
  (define-key basic-mode-map (kbd "C-d") #'jcs-kill-whole-line)
  (define-key basic-mode-map "\C-c\C-c" #'kill-ring-save)
  )
(add-hook 'basic-mode-hook 'jcs-basic-mode-hook)

(add-to-list 'auto-mode-alist '("\\.bas\\'" . basic-mode))


(provide 'jcs-basic-mode)
;;; jcs-basic-mode.el ends here
