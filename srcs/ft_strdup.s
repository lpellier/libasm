				
			section		.text

			global		ft_strdup
			extern		malloc
			extern		ft_strcpy
			extern		ft_strlen

ft_strdup:
			xor			rax, rax

_size:
			call		ft_strlen
			inc			rax
			push		rdi

_malloc:
			mov			rdi, rax
			call		malloc
			cmp			rax, 0
			je			_error

_copy:
			pop			rdi
			mov			rsi, rdi
			mov			rdi, rax
			call		ft_strcpy
			ret

_error:
			mov			rax, 0
			ret