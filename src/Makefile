include ../Makefile.common


####


MLS=console.ml events.ml streams.ml process.ml utils.ml timers.ml lwt_node.ml
MLIS=$(MLS:ml=mli)
CMIS=$(MLS:ml=cmi)
CMOS=$(MLS:ml=cmo)

TARGETNAME=node
TARGET=$(TARGETNAME).cma

CO=stubs.o


####


all: $(TARGET)

$(TARGET): $(CMOS) $(CO)
	ocamlmklib -o $(TARGETNAME) $^

$(CMOS): $(CMIS)

%.cmo: %.ml
	$(OCAMLC) -g -c $<

%.cmi: %.mli
	$(OCAMLC) -g -c $<

%.o: %.c
	ocamlfind ocamlc -package lwt -c $<

stubs.c: $(MLS)
	(echo "#include <stdlib.h>"; \
	 echo "#include <stdio.h>"; \
	 echo "#define D(f) void f () { fprintf(stderr, \"Unimplemented Javascript primitive %s!\\\\n\", #f); exit(1); }"; \
	 (sed -n -e 's/.*external.*"\([^"%]*\)".*/D(\1)/p' $(MLS) | \
	  sort | uniq)) \
        > stubs.c

clean:
	rm -f *.cm[ioa] *.so *.a a.out $(CMOS) $(CMIS) $(CO) $(CO:o=c)

