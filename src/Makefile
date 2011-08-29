include ../Makefile.common


####


MLS=console.ml events.ml
MLIS=$(MLS:ml=mli)
CMIS=$(MLS:ml=cmi)
CMOS=$(MLS:ml=cmo)

TARGET=node.cma


####


all: $(TARGET)

$(TARGET): $(CMOS)
	$(OCAMLC) -a $^ -o $@

$(CMOS): $(CMIS)

%.cmo: %.ml
	$(OCAMLC) -g -c $<

%.cmi: %.mli
	$(OCAMLC) -g -c $<



clean:
	rm -f *.cm[ioa] *.so *.a a.out $(CMOS) $(CMIS)

