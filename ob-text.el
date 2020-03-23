;;; ob-text.el --- Tangle raw text blocks in org=babel.
  ;; Copyright 2020 Tammy Cravit
  ;;
  ;; License: GNU General Public License version 3, or (at your option) any later version
  ;; Author: Tammy Cravit <tammymakesthings@gmail.com>
  ;; Maintainer: Tammy Cravit <tammymakesthings@gmail.com>
  ;; Keywords: org babel text
  ;; URL: https://github.com/tammymakesthings/ob-text
  ;; Created: 2020-03-13
  ;; Version: 0.1
  ;; Package-Requires: ((org "8"))
  ;
  ;;; Commentary:
  ;;
  ;; Supports tangling literal text blocks from Org files.

  (require 'org)
  (require 'ob)

  (defgroup ob-text nil "Tangle raw text blocks." :group 'org)
  (defcustom ob-text:default-dest "ob-text.txt"
    "Default destination for tangled text blocks."
    :group 'ob-text :type 'string)

  ;;;###autoload
  (defun org-babel-execute:text (body params)
    "org-babel execution hook."
    (let (
          (text (or (cddr (assoc :var params))
                    body
                    "")))
      text))
	  
  ;;;###autoload
  (eval-after-load "org"
    '(add-to-list 'org-src-lang-modes '("text" . text)))

  (provide 'ob-text)
#end_src

And now we load it.

#+begin_src emacs-lisp
  (require 'ob-text)
