include ../Makefile.common

libColors.so: src/colors.o
	$(CC) -shared -o$@ $(CXXFLAGS) -p $^
install: libColors.so
	cp libColors.so $(DESTDIR)$(PREFIX)/lib
clean:
	-rm libColors.so src/colors.o 
