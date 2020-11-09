			section		.text
	
			global		ft_strcmp

ft_strcmp:
			xor			rax, rax

_loop:
			mov			dl, byte [rdi + rax]
			mov			cl, byte [rsi + rax]
			cmp			dl, cl
			je			_check
			jmp			_end

_check:
			cmp			dl, 0
			je			_end
			cmp			cl, 0
			je			_end
			inc			rax
			jmp			_loop

_end:
			sub			dl, cl
			movsx		rax, dl
			ret