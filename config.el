(fset 'yes-or-no-p 'y-or-n-p)

(tab-bar-mode 1)

(require 'package)
(package-initialize)

(eval-when-compile (add-to-list 'load-path "~/.config/emacs/elpa/use-package-2.4.5/")
                   (require 'use-package))
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(require 'use-package-ensure)
(setq use-package-always-ensure t)

(setq dired-kill-when-opening-new-dired-buffer t)

(setq dired-listing-switches "-lh --group-directories-first")

(use-package all-the-icons-dired
  :config
  (add-hook 'dired-mode-hook 'all-the-icons-dired-mode))

(setq inhibit-startup-message t)
(setq initial-scratch-message nil)
(tool-bar-mode -1)
(menu-bar-mode -1)
(scroll-bar-mode -1)
(set-frame-font "Fira Code 12" nil t)
(set-frame-parameter nil 'alpha 90)

(call-process-shell-command "xcompmgr &" nil 0)
(call-process-shell-command "feh --bg-fill ~/Pictures/futuristic.jpg" nil 0)

(use-package doom-modeline 
  :init (doom-modeline-mode 1))
(use-package doom-themes 
  :config (load-theme 'doom-tokyo-night t))

(setq org-startup-indented t)

(add-to-list 'load-path "~/.emacs.d/exwm/")
(add-to-list 'load-path "~/.emacs.d/xelb/")
(require 'exwm)

(setq exwm-input-global-keys
      `(
        ;; 's-r': Toggle
        ([?\s-r] . (lambda ()
                     (interactive)
                     (if exwm-window-type
                         (if (string= exwm--input-mode "line-mode")
                             (call-interactively #'exwm-input-release-keyboard)
                           (call-interactively #'exwm-input-grab-keyboard))
                       (message "Not on a EXWM window"))))
        ;; 's-d': Application Search
        ([?\s-d] . counsel-linux-app)
        ;; 's-v' Open Virosm HTTPS
        ([?\s-v] . (find-file "~"))
        ;; 's-b': Switch Buffer.
        ([?\s-b] . ivy-switch-buffer)
        ;; 's-&': Launch application.
        ([?\s-&] . (lambda (command) 
                     (interactive (list (read-shell-command "$ "))) 
                     (start-process-shell-command command nil
                                                  command)))))
;; Line-editing shortcuts
(setq exwm-input-simulation-keys
      '(([?\C-b] . [left]) 
        ([?\C-f] . [right]) 
        ([?\C-p] . [up]) 
        ([?\C-n] . [down]) 
        ([?\C-a] . [home]) 
        ([?\C-e] . [end]) 
        ([?\M-v] . [prior]) 
        ([?\C-v] . [next]) 
        ([?\C-d] . [delete]) 
        ([?\C-k] . [S-end delete])))

(defun exwm-rename-buffer ()
  (interactive)
  (exwm-workspace-rename-buffer
   (concat exwm-class-name ":"
           (if (<= (length exwm-title) 50) exwm-title
             (concat (substring exwm-title 0 49) "...")))))
(add-hook 'exwm-update-class-hook 'exwm-rename-buffer)
(add-hook 'exwm-update-title-hook 'exwm-rename-buffer)

(require 'exwm-systemtray)
(exwm-systemtray-enable)

(exwm-enable)
