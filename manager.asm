extern printf
extern scanf
extern fgets
extern stdin
extern strlen
global manager

INPUT_LEN equ 256
LARGE_BOUNDARY equ 64
SMALL_BOUNDARY equ 16

segment .data
align SMALL_BOUNDARY
welcome db "Welcome to a friendly assembly program", 10, 0
enter_name db "Please enter your full name, followed by the <enter> key: ", 0
hello_name db "Good afternoon, %s.", 10, 0
float_format db "%lf", 0
string_format db "%s", 0
num_var dq 4.0

segment .bss
align LARGE_BOUNDARY
name resb INPUT_LEN
array_one resq 100

segment .text
manager: ; RENAME THIS TO THE NAME OF YOUR MODULE/FUNCTION THAT YOU ARE WRITING
; Prolog ===== Insurance for any caller of this assembly module =======================================================
; Any future program calling this module that the data in the caller's GPRs will not be modified.
push rbp
mov  rbp,rsp
push rdi                                                    ;Backup rdi
push rsi                                                    ;Backup rsi
push rdx                                                    ;Backup rdx
push rcx                                                    ;Backup rcx
push r8                                                     ;Backup r8
push r9                                                     ;Backup r9
push r10                                                    ;Backup r10
push r11                                                    ;Backup r11
push r12                                                    ;Backup r12
push r13                                                    ;Backup r13
push r14                                                    ;Backup r14
push r15                                                    ;Backup r15
push rbx                                                    ;Backup rbx
pushf                                                       ;Backup rflags

; Code goes here

mov rax, 0
mov rdi, welcome
call printf

; enter name
mov rax, 0
mov rdi, enter_name
call printf
mov rax, 0
mov rdi, name
mov rsi, INPUT_LEN
mov rdx, [stdin]
call fgets
mov rax, 0
mov rdi, name
call strlen
sub rax, 1
mov byte [name + rax], 0
mov rax, 0
mov rdi, hello_name
mov rsi, name
call printf



; end program
movsd xmm0, [num_var]

; Restore original values to integer registers ========================================================================
popf                                                        ;Restore rflags
pop rbx                                                     ;Restore rbx
pop r15                                                     ;Restore r15
pop r14                                                     ;Restore r14
pop r13                                                     ;Restore r13
pop r12                                                     ;Restore r12
pop r11                                                     ;Restore r11
pop r10                                                     ;Restore r10
pop r9                                                      ;Restore r9
pop r8                                                      ;Restore r8
pop rcx                                                     ;Restore rcx
pop rdx                                                     ;Restore rdx
pop rsi                                                     ;Restore rsi
pop rdi                                                     ;Restore rdi
pop rbp                                                     ;Restore rbp

ret
