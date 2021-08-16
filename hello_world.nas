global _start

section .data
message: db 'hello,world!', 10
newline_char: db 10

section .text
_start:
  mov rax, 1
  mov rdi, 1
  mov rsi, message
  mov rdx, 14
  syscall

  call print_newline

  mov rax, 60
  xor rdi, rdi
  syscall

print_newline:
  push rbp
  mov rbp, rsp
  mov rax, 1
  mov rdi, 1
  mov rsi, newline_char
  mov rdx, 1
  syscall
  pop rbp
  ret

