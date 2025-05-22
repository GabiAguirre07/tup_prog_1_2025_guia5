Proceso sin_titulo
	Definir cancart,cantvend,cant1,cant2,cant3,i,tip,vend1,vend2,vend3,vend4,ivend Como Entero;
	Definir  montpagar,rectotal,rec1,rec2,rec3,totalrec,porc1,porc2,porc3,acum1,acum2,acum3,recaudvend1,recaudvend2,recaudvend3,recaudvend4,vendmayor Como Real;
	Definir vendedor como Cadena;
	Dimensionar vend[5];
	Definir vend Como Real;
	Escribir " ¿Cuántos vendedores hay disponibles? (2 a 4) ";
	Leer cantvend;
	Si cantvend >= 2 Y cantvend <= 4 Entonces
		recaudvend1<-0;
		recaudvend2<-0;
		recaudvend3<-0;
		recaudvend4<-0;
		vendmayor<- -9999;
		Para i <- 1 Hasta cantvend Con Paso 1 Hacer
			rectotal<-0;
			acum1<-0;
			acum2<-0;
			acum3<-0;
			montpagar<-0;
			cant1<-0;
			cant2<-0;
			cant3<-0;
			Repetir
			Escribir " Vendedor ",i,":", " ¿ Qué tipo de cartón desea? : (1: Cartón de Tele Bingo $400, 2: Cartón de Quini Seis $800 ,3: Cartón del Toto bingo $750,Otro número para cambiar de vendedor) ";
			Leer tip;
			Escribir " ¿Cuántos cartones desea ? ";
			Leer cancart;
			Segun tip Hacer
				1:
					acum1 <- acum1 + (cancart*400);
					montpagar <- (cancart * 400);
					cant1<-cant1+cancart;
					Escribir " La cantidad de cartones elegidos es: ",cancart;
					Escribir " El cartón elegido es el Cartón Tele Bingo: ";
					Escribir " El monto total a pagar es: ","$",montpagar;
				2:
					acum2 <- acum2 + (cancart*800);
					montpagar <- (cancart * 800);
					cant2<-cant2+cancart;
					Escribir " La cantidad de cartones elegidos es: ",cancart;
					Escribir " El cartón elegido es el Cartón de Quini Seis: ";
					Escribir " El monto total a pagar es: ","$",montpagar;
				3:
					acum3 <- acum3 + (cancart*750);
					montpagar <- (cancart * 750);
					cant3<-cant3+cancart;
					Escribir " La cantidad de cartones elegidos es: ",cancart;
					Escribir " El cartón elegido es el Cartón del Toto Bingo: ";
					Escribir " El monto total a pagar es: ","$",montpagar;
			FinSegun
		Hasta Que tip < 1 O tip > 3
		rectotal <- acum1 + acum2 + acum3;
		Escribir " La recaudación total obtenida del vendedor " ,i, " es: ", "$",rectotal;
		Escribir " La recaudación del cartón de Tele Bingo es de: ","$",acum1;
		Escribir " La cantidad de cartones de Tele Bingo vendidos es de: ",cant1;
		Escribir " La recaudación del cartón de Quini Seis es de: ","$",acum2;
		Escribir " La cantidad de cartones de Quini Seis vendidos es de: ",cant2;
		Escribir " La recaudación del cartón del Toto Bingo es de: ","$",acum3;
		Escribir " La cantidad de cartones del Toto Bingo vendidos es de: ",cant3;
		totalrec <- rectotal + totalrec;
		rec1 <- rec1 + acum1;
		rec2 <- rec2 + acum2;
		rec3 <- rec3 + acum3;
		vend[i] <- rectotal;
	FinPara
	ivend <- 1;
	Para i <- 1 Hasta 4 Con Paso 1 Hacer
		si vend[i] > vendmayor Entonces
			vendmayor <- vend[i] ;
			ivend <- i;
		FinSi
	FinPara
	Escribir " La recaudación total de todos los vendedores es de: ","$",totalrec;
	Escribir " El premio para el vendedor que más recaudo es para el vendedor: ",ivend;
	porc1 <- (rec1/totalrec)*100;
	porc1<- trunc (porc1*100)/100;
	Escribir " El porcentaje de recaudación en cartones de Tele Bingo es de: ",porc1," % ";
	porc2 <- (rec2/totalrec)*100;
	porc2<- trunc (porc2*100)/100;
	Escribir " El porcentaje de recaudación en cartones de Quini Seis es de: ",porc2," % ";
	porc3 <- (rec3/totalrec)*100;
	porc3<- trunc (porc3*100)/100;
	Escribir " El porcentaje de recaudación en cartones del Toto Bingo es de: ",porc3," % ";
	SiNo
	Escribir " Error: cantidad inválida de vendedores ";
	FinSi
FinProceso
