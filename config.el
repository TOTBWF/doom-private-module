;;; ~/.doom.d/config.el -*- lexical-binding: t; -*-

(def-package! org-chef :after org)

(def-package! graphql-mode)

(after! haskell-mode
  (setq haskell-auto-insert-module-format-string "-- |
  -- Module      :  %1$s
  -- Copyright   :  (c) Reed Mullanix 2019
  -- License     :  BSD-style
  -- Maintainer  :  reedmullanix@gmail.com
  --
  module %1$s
  (
  ) where\n"))


;; I find it really annoying escape closes out the minbuffer...
(setq doom-escape-hook (delete '+popup|close-on-escape doom-escape-hook))

(map! :n "C-h" 'evil-window-left
      :n "C-j" 'evil-window-down
      :n "C-k" 'evil-window-up
      :n "C-l" 'evil-window-right
      :leader
      ;; Rebind the default escape behavior to 'SPC b q'
      :n "b q" 'close-popup-buffers)
