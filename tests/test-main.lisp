;;;; tests/test-main.lisp

(in-package :sbla-tests)

(fiveam:def-suite testmain
    :description "test suite 1")

(fiveam:in-suite testmain)

(fiveam:test test1
  (is (= (+ 1 1)
         3)))