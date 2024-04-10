@echo off
set user_cmd=%1
set LISP=sbcl
if %user_cmd%==run %LISP% --load run.lisp
if %user_cmd%==build %LISP% --non-interactive --load steel-bank-local-archive.asd --eval "(ql:quickload :steel-bank-local-archive)" --eval "(asdf:make :steel-bank-local-archive)"
if %user_cmd%==test %LISP% --non-interactive --load run-tests.lisp