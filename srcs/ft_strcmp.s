			section		.text

			global		ft_strcmp

ft_strcmp:
			xor			rax, rax

_loop:
			mov			dl, byte [rdi + rax]
			mov			cl, byte [rsi + rax]
			cmp			dl, cl
			jl			_less
			jg			_more
			inc			rax
			cmp			dl, 0
			je			_equal
			jne			_loop

_less:
			sub			dl, cl
			movsx		rax, dl
			ret

_more:
			movsx		rax, dl
			ret

_equal:
			mov			rax, 0
			ret