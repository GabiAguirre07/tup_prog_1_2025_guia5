Proceso encuesta_uso_transporte
	Definir canttenc,cantb,cantenc,canta,canttran,cantta,cantottran,canttb,i,trans,cantmot,cantencuestadores Como Entero;
	Definir distpraut,distprtrans, acumdaut,acumdtrans, acumdb,acummotd,porcb,porcaut,porctrans,distaprox,distprb,distprmot,acumt,acumb,acumaut,acumtrans  Como Real;
	Escribir " Ingrese la cantidad de encuestadores disponibles (2 a 4) ";
	Leer cantencuestadores;
	acumt<-0;
	acumb<-0;
	acumaut<-0;
	acumtrans<-0;
	Si cantencuestadores >= 2 Y cantencuestadores <= 4 Entonces
	Para i <- 1 Hasta cantencuestadores Con Paso 1 Hacer
		Repetir
		Escribir " Ingrese el tipo de transporte que considere de uso más frecuente: (1:Bicicleta, 2:Motocicleta, 3:Automóvil, 4:Transporte público) / otro número para terminar encuestador ";
		Leer trans;
		Escribir " Ingrese la distancia aproximada recorrida por el vehículo elegido anteriormente: ";
		Leer distaprox;
		Segun trans Hacer
			1:
				cantb <- cantb + 1;
				acumdb <- acumdb + distaprox;
				cantenc <- cantenc + 1;
			2:
				cantmot <- cantmot + 1;
				acummotd <- acummotd + distaprox;
				cantenc <- cantenc + 1;
			3:
				canta <- canta + 1;
				cantenc <- cantenc + 1;
				acumdaut <- acumdaut + distaprox;
			4:
				canttran <- canttran + 1;
				cantenc <- cantenc + 1;
				acumdtrans <- acumdtrans + distaprox;
		FinSegun
	Hasta Que trans <= 0 O trans >= 5
	Si cantb = 0 Entonces
		Escribir " No hubo usuarios de bicicleta encuestados ";
	SiNo
		Escribir " La cantidad de personas que usan bicicleta son: ",cantb;
		distprb <- acumdb / cantb;
		distprb <- trunc (distprb*100)/100;
		Escribir " La distancia promedio recorrida por los usuarios de bicicleta es de: ",distprb;
	FinSi
	Si cantmot = 0 Entonces
		Escribir " No hubo usuarios de motocicleta encuestados ";
	SiNo
		Escribir " La cantidad de personas que usan motocicleta son: ",cantmot;
		distprmot <- acummotd / cantmot;
		distprmot <- trunc (distprmot*100)/100;
		Escribir " La distancia promedio recorrida por los usuarios de motocicleta es de: ",distprmot;
	FinSi
	Si canta = 0 Entonces
		Escribir " No hubo usuarios de automóvil encuestados ";
	SiNo
		Escribir " La cantidad de personas que usan automóvil son: ",canta;
		distpraut <- acumdaut / canta;
		distpraut <- trunc (distpraut*100)/100;
		Escribir " La distancia promedio recorrida por los usuarios de automóvil es de: ",distpraut;
	FinSi
	Si canttran = 0 Entonces
		Escribir " No hubo usuarios de transporte público encuestados ";
	SiNo
		Escribir " La cantidad de personas que usan transporte público son: ",canttran;
		distprtrans <- acumdtrans / canttran;
		distprtrans <- trunc (distprtrans*100)/100;
		Escribir " La distancia promedio recorrida por los usuarios de transporte público es de: ",distprtrans;
	FinSi
		Escribir " La cantidad de encuestados es de: ",cantenc;
		acumt <- cantenc+acumt;
		acumb <- cantb + acumb;
		acumaut <- acumaut+canta;
		acumtrans <- canttran + acumtrans;
		cantb <- 0;
		cantmot <- 0;
		acumdb <- 0;
		canta <- 0;
		canttran <- 0;
		cantenc <- 0;
		acummotd <- 0;
	FinPara
	Si distaprox <> 0 Entonces
		Escribir " La población total de encuestados es de: ",acumt;
		porcb <- (acumb / acumt) *100;
		porcb <- trunc (porcb*100) / 100;
		Escribir " El porcentaje de personas que usan bicicleta es de: ",porcb,"%";
		porcaut <- (acumaut / acumt) *100;
		porcaut <- trunc (porcaut*100) / 100;
		Escribir " El porcentaje de personas que usan automóvil es de: ",porcaut,"%";
		porctrans <- (acumtrans / acumt) *100;
		porctrans <- trunc (porctrans*100) / 100;
		Escribir " El porcentaje de personas que usan el transporte público es de: ",porcaut,"%";
	SiNo
		Escribir " No hubo encuestados ";
	FinSi
	Sino
	Escribir " Error cantidad de encuestadores inválida ";
FinSi
FinProceso
