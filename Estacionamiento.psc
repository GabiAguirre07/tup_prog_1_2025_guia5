Proceso sin_titulo
	Definir canttotal,cantmot,cantaut,cantutil,cantcamion,tipvehiculo,totalcant,totalmot,totalaut,totalutil,totalcamion Como Entero;
	Definir tiempest, cobromot,cobroaut,cobroutil,cobrocamion,valtotal,porcaut,porcmot,porccamion,porcutil,totrecau,recautotal,acumaut,acumcamion,acummot,acumutil,porcantaut,porccantmot,porccantutil,porcantcamion Como Real;
	Repetir
		cantmot<-0;
		cantaut<-0;
		cantcamion<-0;
		cantutil<-0;
		canttotal<-0;
		acumaut<-0;
		acumcamion<-0;
		acummot<-0;
		acumutil<-0;
		totrecau<-0;
		valtotal<-0;
		porcaut<-0;
		porccamion<-0;
		porcmot<-0;
		porcutil<-0;
		Escribir " Ingrese el cobro según el tipo de vehículo por hora:1:Moto,2:Auto,3:Utilitario,4:Camión ";
		Leer cobromot,cobroaut,cobroutil,cobrocamion;
		Repetir
			Escribir " Ingrese el tipo de vehículo: (1:Moto,2:Auto,3:Utilitario,4:Camión  / 5 o más para terminar zona / 0 o menos para terminar todas las zonas) ";
			Leer tipvehiculo;
		Escribir " Ingrese el tiempo de estancia (en horas): ";
		Leer tiempest;
		Segun tipvehiculo Hacer
			1:
				cantmot <- cantmot+1;
				acummot <- acummot + (tiempest*cobromot);
				valtotal<- tiempest*cobromot;
				Escribir " El costo por hora es: ","$",cobromot;
				Escribir " El valor total a pagar es: ","$",valtotal;
			2:
				cantaut <- cantaut+1;
				acumaut <- acumaut + (tiempest*cobroaut);
				valtotal <- tiempest*cobroaut;
				Escribir " El costo por hora es: ","$",cobroaut;
				Escribir " El valor total a pagar es: ","$",valtotal;
			3:
				cantutil <- cantutil+1;
				acumutil <- acumutil + (tiempest*cobroutil);
				valtotal <- tiempest * cobroutil;
				Escribir " El costo por hora es: ","$",cobroutil;
				Escribir " El valor total a pagar es: ","$",valtotal;
		    4: 
				cantcamion <- cantcamion+1;
				acumcamion <- acumcamion + (tiempest*cobrocamion);
				valtotal<- tiempest*cobrocamion;
				Escribir " El costo por hora es: ","$",cobrocamion;
				Escribir " El valor total a pagar es: ","$",valtotal;
		FinSegun
	Hasta Que tipvehiculo < 1 O tipvehiculo >= 5
	totrecau <- acummot + acumaut + acumutil + acumcamion;
	Si acummot <> 0 Entonces
		porcmot <- (acummot/totrecau)*100;
		porcmot <- trunc (porcmot*100)/100;
		Escribir " El porcentaje de recaudación en motos es de: ",porcmot,"%";
	SiNo
		Escribir " No hubo recaudación en motos ";
	FinSi
	Si acumaut <> 0 Entonces
		porcaut <- (acumaut/totrecau)*100;
		porcaut <- trunc (porcaut*100)/100;
		Escribir " El porcentaje de recaudación en autos es de: ",porcaut,"%";
SiNo
	Escribir " No hubo recaudación en autos ";
	FinSi
	Si acumutil <> 0 Entonces
		porcutil <- (acumutil/totrecau)*100;
		porcutil <- trunc (porcutil*100)/100;
		Escribir " El porcentaje de recaudación en utilitarios es de: ",porcutil,"%";
	SiNo
		Escribir " No hubo reacudación en utilitarios ";
	FinSi
	Si acumcamion <> 0 Entonces
		porccamion <- (acumcamion/totrecau)*100;
		porccamion <- trunc (porccamion*100)/100;
		Escribir " El porcentaje de recaudación en camiones es de: ",porccamion,"%";
	SiNo
		Escribir " No hubo recaudación en camiones ";
	FinSi
	Escribir " El valor total recaudado es de: ","$",totrecau;
	recautotal <- recautotal + totrecau;
	totalmot <- cantmot + totalmot;
	totalaut <- cantaut + totalaut;
	totalutil<- cantutil+totalutil;
	totalcamion <- cantcamion + totalcamion;
	canttotal <- cantaut + cantcamion + cantmot + cantutil;
	totalcant <- canttotal + totalcant;
Hasta Que tipvehiculo <= 0
Escribir " La recaudación total es de: ","$",recautotal;
Si totalmot <> 0 Entonces
	porccantmot <- (totalmot/totalcant)*100;
	porccantmot<- trunc (porccantmot*100)/100;
	Escribir " El porcentaje en cantidad de motos es de: ",porccantmot,"%",;
SiNo
	Escribir " No hubo ingreso de motos ";
FinSi
Si totalaut <> 0 Entonces
	porcantaut <- (totalaut/totalcant)*100;
	porcantaut<- trunc (porcantaut*100)/100;
	Escribir " El porcentaje en cantidad de autos es de: ",porcantaut,"%";
SiNo
	Escribir " No hubo ingreso de autos";
FinSi
Si totalutil <> 0 Entonces
	porccantutil <- (totalutil/totalcant)*100;
	porccantutil<- trunc (porccantutil*100)/100;
	Escribir " El porcentaje en cantidad de utilitarios es de: ",porccantutil,"%";
SiNo
	Escribir " No hubo ingreso de utilitarios";
FinSi
Si totalcamion <> 0 Entonces
	porccamion <- (totalcamion/totalcant)*100;
	porccamion<- trunc (porccamion*100)/100;
	Escribir " El porcentaje en cantidad de camiones es de: ",porccamion,"%";
SiNo
	Escribir " No hubo ingreso de camiones";
FinSi
FinProceso
