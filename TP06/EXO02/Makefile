.PHONY: all 
#.SECONDARY:

ifneq ($(KERNELRELEASE),)

obj-m := exo02.o exo02_slab.o exo02_mempool.o

else
	
  KERNELDIR ?= /lib/modules/$(shell uname -r)/build
  PWD := $(shell pwd)

all :
	$(info obj-m : $(obj-m))
	make -C $(KERNELDIR) M=$(PWD) modules

clean:
	make -C $(KERNELDIR) M=$(PWD) clean

endif
