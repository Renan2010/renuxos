section .multiboot_header
header_start:
  ; magic nunber
  dd 0xe85250d6 ; multiboot2
  ; architecture
  dd 0 ; protected mode i386
  ; checksum
  dd 0x100000000 - (0xe85250d6 + 0 +(header_end - header_start))
  ; end tag
  dw 0
  dw 0
  dd 8
header_end:
