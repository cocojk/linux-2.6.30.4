cmd_arch/x86/kernel/acpi/realmode/wakeup.lds := gcc -E -Wp,-MD,arch/x86/kernel/acpi/realmode/.wakeup.lds.d  -nostdinc -isystem /usr/lib/gcc/x86_64-linux-gnu/4.8/include -Iinclude  -I/home/jkr555/Downloads/linux-2.6.30.4/arch/x86/include -include include/linux/autoconf.h -D__KERNEL__   -P -C -D__ASSEMBLY__ -o arch/x86/kernel/acpi/realmode/wakeup.lds arch/x86/kernel/acpi/realmode/wakeup.lds.S

deps_arch/x86/kernel/acpi/realmode/wakeup.lds := \
  arch/x86/kernel/acpi/realmode/wakeup.lds.S \
  arch/x86/kernel/acpi/realmode/wakeup.h \

arch/x86/kernel/acpi/realmode/wakeup.lds: $(deps_arch/x86/kernel/acpi/realmode/wakeup.lds)

$(deps_arch/x86/kernel/acpi/realmode/wakeup.lds):
