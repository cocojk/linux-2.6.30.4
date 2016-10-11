cmd_arch/x86/kernel/vmlinux.lds := gcc -E -Wp,-MD,arch/x86/kernel/.vmlinux.lds.d  -nostdinc -isystem /usr/lib/gcc/x86_64-linux-gnu/4.8/include -Iinclude  -I/home/jkr555/linux-2.6.30.4/arch/x86/include -include include/linux/autoconf.h -D__KERNEL__   -P -C -Ux86_64 -Ux86_64 -D__ASSEMBLY__ -o arch/x86/kernel/vmlinux.lds arch/x86/kernel/vmlinux.lds.S

deps_arch/x86/kernel/vmlinux.lds := \
  arch/x86/kernel/vmlinux.lds.S \
    $(wildcard include/config/x86/32.h) \
  arch/x86/kernel/vmlinux_64.lds.S \
    $(wildcard include/config/smp.h) \
    $(wildcard include/config/x86/l1/cache/bytes.h) \
    $(wildcard include/config/x86/internode/cache/bytes.h) \
    $(wildcard include/config/blk/dev/initrd.h) \
    $(wildcard include/config/kexec.h) \
  include/asm-generic/vmlinux.lds.h \
    $(wildcard include/config/hotplug.h) \
    $(wildcard include/config/hotplug/cpu.h) \
    $(wildcard include/config/memory/hotplug.h) \
    $(wildcard include/config/ftrace/mcount/record.h) \
    $(wildcard include/config/trace/branch/profiling.h) \
    $(wildcard include/config/profile/all/branches.h) \
    $(wildcard include/config/event/tracer.h) \
    $(wildcard include/config/tracing.h) \
    $(wildcard include/config/ftrace/syscalls.h) \
    $(wildcard include/config/function/graph/tracer.h) \
    $(wildcard include/config/generic/bug.h) \
    $(wildcard include/config/pm/trace.h) \
  include/linux/section-names.h \
  include/asm/asm-offsets.h \
  /home/jkr555/linux-2.6.30.4/arch/x86/include/asm/page_types.h \
    $(wildcard include/config/x86/64.h) \
  include/linux/const.h \
  /home/jkr555/linux-2.6.30.4/arch/x86/include/asm/page_64_types.h \
    $(wildcard include/config/physical/start.h) \
    $(wildcard include/config/flatmem.h) \
  /home/jkr555/linux-2.6.30.4/arch/x86/include/asm/kexec.h \
    $(wildcard include/config/x86/pae.h) \

arch/x86/kernel/vmlinux.lds: $(deps_arch/x86/kernel/vmlinux.lds)

$(deps_arch/x86/kernel/vmlinux.lds):
