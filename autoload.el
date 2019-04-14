;;; ~/.doom.d/autoload.el -*- lexical-binding: t; -*-

;;;###autoload
(defun +haskell/hoogle-fill-hole (insert)
  "Use hoogle to try to find something with the same type as a hole"
  (let* ((thing (intero-thing-at-point))
         (ty-str (apply #'intero-get-type-at thing))
         (ty (nth 1 (split-string ty-str ":: "))))
    (shell-command (concat "stack hoogle \"" ty "\"") (intero-help-buffer))))

;;;###autoload
(defun close-popup-buffers ()
  "Interactive command wrapping +popup|close-on-escape"
  (interactive)
  (+popup|close-on-escape))
