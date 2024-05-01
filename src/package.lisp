;;;; src/package.lisp

(defpackage :steel-bank-local-archive
  (:use :cl)
  (:nicknames :sbla)
  (:local-nicknames
    (#:alloy #:org.shirakumo.alloy)
    (#:glfw #:org.shirakumo.alloy.renderers.glfw)
    (#:windowing #:org.shirakumo.alloy.windowing)
    (#:colors #:org.shirakumo.alloy.colored.colors))
  (:export #:main))