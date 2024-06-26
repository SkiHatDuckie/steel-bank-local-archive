;;;; src/main.lisp

(in-package :sbla)

(define-screen app (screen)
  (let* ((window (windowing:make-window screen :bounds (alloy:px-size 400 400)))
         (focus (make-instance 'alloy:focus-list :focus-parent window))
         (layout (make-instance 'alloy:vertical-linear-layout :layout-parent window))
         (button (alloy:represent "Greet" 'alloy:button)))
    (alloy:enter button layout)
    (alloy:enter button focus)
    (alloy:on alloy:activate (button)
      (let ((window (windowing:make-window screen :bounds (alloy:px-size 200 200)
                                                  :background-color colors:white)))
        (alloy:enter (alloy:represent "Hey!" T) window)))))

(defun main ()
  "Entrypoint of steel-bank-local-archive."
  (app)
  (uiop:quit))