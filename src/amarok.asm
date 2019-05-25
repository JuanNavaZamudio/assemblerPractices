include libreria.lib

dibujalogo macro
	;limpia
	dibujarect 0,0,24,79,66h

	;circulo
	dibujarect 3,14,3,27,77h
	dibujarect 4,10,4,29,77h
	dibujarect 5,6,6,33,77h
	dibujarect 7,4,7,35,77h
	dibujarect 8,2,10,37,77h
	dibujarect 11,0,15,39,77h
	dibujarect 16,2,16,37,77h
	dibujarect 17,4,17,37,77h
	dibujarect 18,4,18,35,77h
	dibujarect 19,6,19,33,77h
	dibujarect 20,8,20,31,77h
	dibujarect 21,12,21,27,77h
	dibujarect 22,16,22,23,77h
	
	
	;lobo
	dibujarect 6,26,6,27,11h
	dibujarect 7,22,7,27,11h
	dibujarect 8,20,8,27,11h
	dibujarect 9,18,9,25,11h
	dibujarect 10,12,10,25,11h
	dibujarect 11,10,11,23,11h
	dibujarect 12,8,12,29,11h
	dibujarect 13,6,13,25,11h
	dibujarect 14,4,14,21,11h
	dibujarect 15,2,15,21,11h
	dibujarect 16,4,18,19,11h
	dibujarect 19,6,19,19,11h
	dibujarect 20,8,20,17,11h
	dibujarect 21,12,21,17,11h
	dibujarect 22,16,22,17,11h
	dibujarect 11,14,11,15,77h
	dibujarect 12,12,12,13,77h

endm


.model small
.stack 64
.data

.code
main proc far
	CPDATA
	dibujalogo
	
	DOSEXIT
main endp

end main
