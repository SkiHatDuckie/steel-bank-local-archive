LISP ?= sbcl

all: test

run:
	rlwrap $(LISP) --load run.lisp

build:
	$(LISP)	--non-interactive \
		--load steel-bank-local-archive.asd \
		--eval '(ql:quickload :steel-bank-local-archive)' \
		--eval '(asdf:make :steel-bank-local-archive)'

test:
	$(LISP) --non-interactive \
		--load run-tests.lisp