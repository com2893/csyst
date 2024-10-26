OUTPUT_FORMAT("binary")
ENTRY(start)
SECTIONS {
    . = 0x1000;  /* Donde empieza el kernel */
    .text : { *(.text) }
}
