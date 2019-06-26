(setq make-backup-files nil) ; stop creating backup~ files                                                             
(setq auto-save-default nil) ; stop creating #autosave# files                                                          
(setq create-lockfiles nil)

(add-to-list 'auto-mode-alist '("\\.launch\\'" . nxml-mode))

(setq tab-width 4)
(setq-default c-basic-offset 4)
(setq c-default-style "linux"
      c-basic-offset 4)
(setq c-toggle-hungry-state 1)
(add-hook 'c-mode-common-hook '(lambda () (c-toggle-auto-state 1)))

(defun my-indent-setup ()
  (c-set-offset 'arglist-intro '+))
    (add-hook 'java-mode-hook 'my-indent-setup)
