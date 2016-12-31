all: dist/hello_world

dist/hello_world: src/hello_world.o dist
	ld -lSystem -o $@ $<

src/hello_world.o: src/hello_world.asm
	nasm -f macho64 $<

dist:
	mkdir -p dist || true

clean:
	rm -rvf *.o dist

.PHONY: all clean dist