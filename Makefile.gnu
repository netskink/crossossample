
# top-level makefile

#:KERNELDIR=/usr/src/linux




.PHONY: all lib apps driver
# all: testyriver.o apps
all: lib driver apps

apps: 
	$(MAKE) --directory=common -f Makefile.gnu
lib: 
	$(MAKE) --directory=lib -f Makefile.gnu
driver: 
	$(MAKE) --directory=driver -f Makefile.gnu


clean:
	$(MAKE) --directory=lib -f Makefile.gnu clean
	$(MAKE) --directory=common -f Makefile.gnu clean
	$(MAKE) --directory=driver -f Makefile.gnu clean

