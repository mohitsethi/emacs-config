(put 'upcase-region 'disabled nil)
(setq-default c-basic-offset 2)

(require 'color-theme)
(color-theme-initialize)
(color-theme-billw)
(color-theme-install-frame-params
  '((background-color . "gray12")))
