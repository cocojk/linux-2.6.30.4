cmd_arch/x86/vdso/vdso.lds := gcc -E -Wp,-MD,arch/x86/vdso/.vdso.lds.d  -nostdinc -isystem /usr/lib/gcc/x86_64-linux-gnu/4.8/include -Iinclude  -I/home/jkr555/Downloads/linux-2.6.30.4/arch/x86/include -include include/linux/autoconf.h -D__KERNEL__   -P -C -D__ASSEMBLY__ -o arch/x86/vdso/vdso.lds arch/x86/vdso/vdso.lds.S

deps_arch/x86/vdso/vdso.lds := \
  arch/x86/vdso/vdso.lds.S \
  arch/x86/vdso/vdso-layout.lds.S \
  arch/x86/vdso/vextern.h \

arch/x86/vdso/vdso.lds: $(deps_arch/x86/vdso/vdso.lds)

$(deps_arch/x86/vdso/vdso.lds):
