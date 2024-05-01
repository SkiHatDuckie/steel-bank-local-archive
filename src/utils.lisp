;;;; src/utils.lisp

(in-package :sbla)

(defvar *screen*)

(defclass screen (glfw:screen) ())

(defmacro define-screen (name args &body body)
  (let ((thunk (gensym "THUNK")))
    `(defun ,name (,@(rest args))
       (flet ((,thunk (,(first args))
                ,@body))
         (if (boundp '*screen*)
             (,thunk *screen*)
             (glfw:with-screen (*screen* 'screen :base-scale 2.0)
               (,thunk *screen*)))))))