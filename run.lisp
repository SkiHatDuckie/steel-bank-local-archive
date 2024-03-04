;;;; run.lisp

(load "steel-bank-local-archive.asd")

(ql:quickload "steel-bank-local-archive")

(in-package :sbla)
(handler-case
    (main)
  (error (c)
    (format *error-output* "~&An error occured: ~a~&" c)
    (uiop:quit 1)))