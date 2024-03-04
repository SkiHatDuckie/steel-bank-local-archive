;;;; run-tests.lisp

(load "steel-bank-local-archive.asd")
(load "steel-bank-local-archive-tests.asd")

(ql:quickload "steel-bank-local-archive-tests")

(in-package :sbla-tests)

(uiop:quit (if (fiveam:run-all-tests) 0 1))