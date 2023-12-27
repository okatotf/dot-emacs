;;; spacious-padding-autoloads.el --- automatically extracted autoloads  -*- lexical-binding: t -*-
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "spacious-padding" "spacious-padding.el" (0
;;;;;;  0 0 0))
;;; Generated autoloads from spacious-padding.el

(defvar spacious-padding-mode nil "\
Non-nil if Spacious-Padding mode is enabled.
See the `spacious-padding-mode' command
for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `spacious-padding-mode'.")

(custom-autoload 'spacious-padding-mode "spacious-padding" nil)

(autoload 'spacious-padding-mode "spacious-padding" "\
Increase the padding/spacing of frames and windows.

This is a minor mode.  If called interactively, toggle the
`Spacious-Padding mode' mode.  If the prefix argument is
positive, enable the mode, and if it is zero or negative, disable
the mode.

If called from Lisp, toggle the mode if ARG is `toggle'.  Enable
the mode if ARG is nil, omitted, or is a positive number.
Disable the mode if ARG is a negative number.

To check whether the minor mode is enabled in the current buffer,
evaluate `(default-value \\='spacious-padding-mode)'.

The mode's hook is called both when the mode is enabled and when
it is disabled.

\(fn &optional ARG)" t nil)

(register-definition-prefixes "spacious-padding" '("spacious-padding-"))

;;;***

;;;### (autoloads nil nil ("spacious-padding-pkg.el") (0 0 0 0))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; spacious-padding-autoloads.el ends here
