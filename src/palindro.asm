include libreria.lib

.model small
.stack 64
.data

name1label LABEL BYTE	;INICIO DE LA LISTA DE PARAMETROS
		;LABEL ES UNA DIRECTIVA DE ENCABEZADO
name1max DB 16		;NUMERO MAXIMO DE CARACTERES DE ENTRADA
name1real DB ?			;NUMERO REAL DE CARACTERES DE ENTRADA
NAME1 DB 16 DUP(' '),'$'

NAME2 DB 16 DUP(' '),'$'


mi db 'es palindromo$'
md db 'no es palindromo$'

.code
main proc far
	cpdata
	
	ingresaren name1label
	imprimecaracter 10
	
	cld
	mov cx,15
	lea si,name1
	lea di,name2+14
	
	ciclo:
		lodsb			;mueve el contenido de si a di
		mov [di],al		
		dec di
	loop ciclo
	
	ESCRIBIR NAME2
	
	imprimecaracter 10
	
	lea di,name2
	lea si,name1
	
	mov cx,15
	repe cmpsb
	jne diferentes
		escribir mi
		jmp fin
	diferentes:
		escribir md

	fin:
	
	dosexit
	
	dosexit	
main endp

end main