;;;; steel-bank-local-archive-tests.asd

(asdf:defsystem :steel-bank-local-archive-tests
  :decription "Test suite for the steel-bank-local-archive system."
  :author "SkiHatDuckie"
  :license "LGPL-2.1"
  :version "0.1.0"

  :depends-on (:steel-bank-local-archive
               :fiveam)

  :serial t
  :components ((:module "tests"
                        :serial t
                        :components ((:file "packages")
                                     (:file "test-main")))))