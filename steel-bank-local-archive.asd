;;;; steel-bank-local-archive.asd

(asdf:defsystem :steel-bank-local-archive
  :description "A offline tool to assist with archiving, documenting, and searching through research documents."
  :author "SkiHatDuckie"
  :license "LGPL-2.1"
  :version "0.1.0"

  :depends-on ()

  :serial t
  :components ((:module "src"
                        :serial t
                        :components ((:file "package")
                                     (:file "main"))))

  :build-operation "program-op"
  :build-pathname "../build/steel-bank-local-archive"
  :entry-point "steel-bank-local-archive:main")