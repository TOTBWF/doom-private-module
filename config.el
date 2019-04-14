;;; ~/.doom.d/config.el -*- lexical-binding: t; -*-

(def-package! org-chef :after org)

(def-package! fsharp-mode
  :commands fsharp-mode
  :config
  (setq fsharp-ac-use-popup nil)
  (map! :localleader
        :map fsharp-mode-map
        "b" #'fsharp-ac/pop-gotodefn-stack
        "d" #'fsharp-ac/gotodefn-at-point
        "l" #'fsharp-load-buffer-file
        "q" #'fsharp-ac/stop-process
        "t" #'fsharp-ac/show-tooltip-at-point
        ))

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
