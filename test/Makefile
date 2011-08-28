include ../Makefile.common


####


MLS=logs.ml
BYTES=$(MLS:ml=byte)
TARGETS=$(MLS:ml=js)
LIB=../src/node.cma


####


all: $(TARGETS)

%.js: %.byte
	$(JOO) -pretty $<

%.byte: %.ml
	$(OCAMLC) -linkpkg -o $@ -I ../src $(LIB) $<

clean:
	rm -f *.cm[io] $(BYTES) $(TARGETS)


