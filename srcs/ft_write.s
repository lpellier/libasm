			section		.text

			extern		__errno_location
			global		ft_write

ft_write:
			cmp			rdi, 0
			jl			_error
			cmp			rsi, 0
			jle			_error

write:
			mov			rax, 1
			syscall
			cmp			rax, 0
			jl			_error
			ret

_error:
			neg			rax
			mov			rcx, rax
			call		__errno_location
			mov			[rax], rcx
			mov			rax, -1
			ret