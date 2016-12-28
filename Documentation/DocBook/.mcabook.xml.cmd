cmd_Documentation/DocBook/mcabook.xml := SRCTREE=/home/jkr555/linux-2.6.30.4/ /home/jkr555/linux-2.6.30.4/scripts/basic/docproc doc Documentation/DocBook/mcabook.tmpl >Documentation/DocBook/mcabook.xml
Documentation/DocBook/mcabook.xml: Documentation/DocBook/mcabook.tmpl drivers/mca/mca-legacy.c arch/x86/include/asm/mca_dma.h
