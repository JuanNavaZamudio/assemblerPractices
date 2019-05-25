include libreria.lib

pintafondo macro fondo
	DIBUJARECT 0,0,24,79,fondo
endm

.MODEL  SMALL 
.STACK	64
.DATA
name1label LABEL BYTE
maxname1 DB 2
actname1 DB ?
opcion db ' $'

errorcaracter db 'opcion no valida$'
BOTONES DB '__[]  X','$'

opcionverde db 'A: verde$'
opcionrojo db 'B: rojo$'
opcionazul db 'C: azul$'
opcionrosa db 'D: rosado$'
opcionsalir db 'F: salir$'

.CODE
MAIN PROC FAR
	cpdata
	
	pintafondo 41h
	
	muestramenu:
	call muestraventana

	ingresaren name1label
	IMPRIMECARACTER 10
	
	call vuelveminuscula
	
	lea bx,opcion
	mov al,[bx]
	
	cmp al,97
	jne sig1
		pintafondo 21h
		jmp fincomp
	sig1:
	cmp al,98
	jne sig2
		pintafondo 41h
		jmp fincomp
	sig2:
	cmp al,99
	jne sig3
		pintafondo 11h
		jmp fincomp
	sig3:
	cmp al,100
	jne sig4
		pintafondo 51h
		jmp fincomp
	sig4:
	cmp al,102
	je sig5
	fincomp:
	jmp muestramenu
	sig5:
	
	COLOCACUR 24,00
	dosexit
ENDP

vuelveminuscula proc near
	
	lea bx,opcion
	mov ah,[bx]
	cmp ah,97
	jb b30
	cmp ah,122
	ja b30
	sub ah,32
	mov [bx],ah
	b30:
	cmp ah,65
	jb b40
	cmp ah,90
	ja b40
	add ah,32
	mov [bx],ah
	b40:
	ret
endp

MUESTRAVENTANA proc near
	;SOMBRA
	DIBUJARECT 9,28,15,52,80H
	;BARRA DE ARRIBA
	DIBUJARECT 8,27,8,43,17H
	;MINIMIZAR
	DIBUJARECT 8,44,8,45,37H
	;MAXIMIZAR
	DIBUJARECT 8,46,8,47,57H
	;CERRAR
	DIBUJARECT 8,48,8,51,47H
	;RESTO DE VENTANA
	DIBUJARECT 9,27,14,51,70H
	;ESCRIBE EN BOTONES
	COLOCACUR 8,44
	ESCRIBIR BOTONES
	;escribir opciones
	colocacur 9,29
	escribir opcionverde
	colocacur 10,29
	escribir opcionrojo
	colocacur 11,29
	escribir opcionazul
	colocacur 12,29
	escribir opcionrosa
	colocacur 13,29
	escribir opcionsalir
	colocacur 11,45

	ret
endp


END MAIN