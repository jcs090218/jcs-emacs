;;; jcs-scala-mode.el --- Scala mode  -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(require 'scala-mode)

;;
;; (@* "Hook" )
;;

(defun jcs-scala-mode-hook ()
  "Scala mode hook."

  ;; File Header
  (jcs-insert-header-if-valid '("[.]scala")
                              'jcs-insert-scala-template)

  ;; Comment Block
  (define-key scala-mode-map (kbd "RET") #'jcs-smart-context-line-break))

(add-hook 'scala-mode-hook 'jcs-scala-mode-hook)

(provide 'jcs-scala-mode)
;;; jcs-scala-mode.el ends here
