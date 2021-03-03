Algoritmo PRINCIPAL
	//DECLARACION DE VARIABLES
		Definir respuesta,clase, fisico1, fisico2, magico1, magico2, eficacia, nombre, fisicos, magicos, eficacias, equip1, equip2 Como Caracter
		respuesta<-"Si"
		nombre<-""
		fisicos<-[]
		magicos<-[]
		eficacias<-[]
		Definir guantes,sombrero,pechera,tunica Como Logico
		guantes<-false
		sombrero<-false
		pechera<-false
		tunica<-false
		Definir  hp,opcion,dmg,contador Como Entero
		hp<-0
		dmg<-0
		contador<-0
		Dimension Arraylist arrayPersonaje<personaje>
		
	//OBJETOS
		personaje p1; //personajes
		enemigos e1; //Enemigo 1
		enemigos e2; //Enemigo 2
		enemigos e3; //Enemigo 3
		
	//CREACION DE ENEMIGOS (En objetos)
		objeto e1 LLAMA AL constructor enemigos
			ESTABLECE EN VARIABLE Nombre "Slime Gigante"
			ESTABLECE EN VARIABLE Hp (500)
			GUARDAR EN ARRAY arrayEnemigos
		objeto e2 LLAMA AL contructor enemigos
			ESTABLECE EN VARIABLE Nombre "Jinete Fantasma"
			ESTABLECE EN VARIABLE Hp (1000)
			GUARDAR EN ARRAY arrayEnemigos
		objeto e3 LLAMA AL contructor enemigos
			ESTABLECE EN VARIABLE Nombre "Dragon Ilusorio"
			ESTABLECE EN VARIABLE Hp (1500)
			GUARDAR EN ARRAY arrayEnemigos
			
		
	//CREACION DE ARRAYS CON LAS HABILIDADES
		INICIALIZAMOS ARRAY fisicos[4] Como Caracter
		//INTRODUCIMOS DATOS
		fisicos[0] <- "Fuerza"
		fisicos[1] <- "Agilidad"
		fisicos[2] <- "Velocidad"
		fisicos[3] <- "Astucia"
		INICIALIZAMOS ARRAY magicos[4] Como Caracter
		//INTRODUCIMOS DATOS
		magicos[0] <- "Petrificacion"
		magicos[1] <- "Espiritualismo"
		magicos[2] <- "Gravitacion"
		magicos[3] <- "Ilusionismo"
		INICIALIZAMOS ARRAY eficacias[4] Como Caracter
		//INTRODUCIMOS DATOS
		eficacias[0] <- "Caballero de la corrosion"
		eficacias[1] <- "Guardian de lo intangible"
		eficacias[2] <- "Villano delirante"
		
		
	//TITULO CONSOLA
		IMPRIMIR "RPG Dungeon"
		IMPRIMIR "Bienvenido"
		HACER 
			IMPRIMIR "¿Que accion desea realizar?"
			IMPRIMIR "1. Crear un nuevo personaje"
			IMPRIMIR "2. Ver personajes creados"
			IMPRIMIR "3. Entrar en la mazmorra"
			IMPRIMIR "4. Instrucciones"
			IMPRIMIR "5. Salir"
			LEER EN VARIBALE opcion
			
			SEGUN VARIABLE opcion HACER
				CASO 1: 
					IMPRIMIR " Cada personaje creado solo puede tener 2 atributos fisicos, 2 atributos magicos y 1 de efectividad"
					HACER 
						IMPRIMIR "Indique el nombre de su personaje:"
						LEER EN VARIABLE Nombre
						RECORRER ARRAY probar <personaje> CON ITERATOR 
						MIENTRAS (RECORRER probar)
							LLAMAR AL METODO probar CON VARIABLE nombrePer
							SI (VARIABLE nombrePer = nombre)
								IMPRIMIR "El personaje ya existe"
								respuesta <- "No"
							FINSI
							SINO 
								respuesta <- "Si"
							FIN SINO
						FinMientras
					MIENTRAS  (respuesta = "No")
					
					HACER
						IMPRIMIR "Eliga su clase"
						IMPRIMIR "Luchador / Hechicero"
						LEER EN VARIABLE clase
						SI (clase = "Luchador" Y clase = "Hechicero")
							respuesta <- "Si"
						FinSi
					MIENTRAS (respuesta "No")
					
					HACER
						IMPRIMIR "¿Deseas equiparte la parte superior del equipamiento?
						IMPRIMIR "Si o No"
						LEER EN VARIABLE equip1
					MIENTRAS (equip1 = "Si")
					
					HACER
						IMPRIMIR "¿Deseas equiparte laparte inferior del aquipamiento?
						IMPRIMIR "Si o No"
						LEER EN VARIABLE equip2
					MIENTRAS (equip2 ="Si")
					
					//RECOGER ATRIBUTOS FISICOS 
					HACER 
						IMPRIMIR "Eliga sus atributos fisicos"
						LLAMAR AL METODO Fisicos(fisicos)
						IMPRIMIR "Princial:"
						LEER EN VARIABLE fisico1
						IMPRIMIR "Segundario:"
						LEER EN VARIABLE fisico2
						PARA (i<-0 HASTA fisicos length INCREMENTANDO)
							SI (fisico1 = fisicos[i])
								contador++
							FinSi
							SI (fisico2 =fisicos[i])
								
							FinSi
						FIN PARA
					SI (contador = 2)
							respuesta <- "Si"
							contador <- 0
					FinSi
					SINO (contador <> 2)
						IMPRIMIR "Indique un atributo existente"
						respuesta <-"No"
						contador <- 0
					FIN SINO
					MIENTRAS (respuesta = "No")
						
					//RECOGER ATRIBUTOS MAGICOS
					HACER 
						IMPRIMIR "Elija sus atributos magicos"
						LLAMAR METODO Magicos(magicos)
						IMPRIMIR "Principal:"
						LEER EN VARIABLE magico1
						IMPRIMIR "Segundario:"
						LEER EN VARIABLE magico2
						PARA ( i<-0 HASTA magicos lenght INCREMENTANDO )
							SI ( magico1 = magicos[i] )
								contador++
							FinSi
							SI ( magico2 = magicos[i] )
								contador++
							FinSi
							
						FinPara
						SI (contador = 2)
							respuesta <- "Si"
							contador <- 0
						FinSi
					SINO (contador <> 2)
						IMPRIMIR "Indique un atributo existente"
						respuesta <-"No"
						contador <- 0
					FIN SINO
					MIENTRAS (respuesta = "No")
						
						//RECOGER ATRIBUTOS TITULO
						HACER
							IMPRIMIR "ELiga su titulo"
							LLAMAR METODO Titulos(eficacias)
							LEER EN VARIABLE eficacia
							PARA (i<-0 HASTA eficacias length INCREMENTANDO)
								SI (eficacia = eficacias[i])
									contador++
								FinSi
							FinPara
							SI (contador = 1)
								respuesta <- "Si"
								contador <- 0
							FIN SI
							SINO (contador <> 1)
								IMPRIMIR "Indique un atributo existente"
								respuesta <- "No"
								contador <- 0
							FIN SINO	
							
						MIENTRAS (respuesta = "No")
							
							
						SI (clase = "Luchador")
							LLAMAR AL OBJETO p1 CON EL METODO luchador CON VARIABLES (nombre, fisico1, fisico2, magico1,magico2,eficacia,guantes,pechera)
							SI (equip1 = "Si")
								SI (p1 PERTENECE A luchador)
									p1 TIPO luchador LLAMAR AL CONSTRUCTOR guantes(true)
								FinSi
							FinSi
							SI (equip2 = "Si")
								SI (p1 PERTENECE A luchador)
									p1 TIPO luchador LLAMAR AL CONSTRUCTOR pechera(true)
								FinSi
							FinSi
							//MOSTRAR LO QUE SE HA CREADO
							IMPRIMIR("Nombre: " + p1.getNombre());
							IMPRIMIR("Destreza principal: " + p1.getFisico1());
							IMPRIMIR("Destreza secundaria: " + p1.getFisico2());
							IMPRIMIR("Magia principal: " + p1.getMagico1());
							IMPRIMIR("Magia secundaria: " + p1.getMagico2());
							IMPRIMIR("Titulo: " + p1.getEficacia());
							IMPRIMIR("Pechera: " + ((luchador)p1).isPechera());
							IMPRIMIR("Guantes: " + ((luchador)p1).isGuantes());					
							AÑADIMOS AL ARRAY arrayPersonaje
						FinSi
						
						
					
				CASO 2: 
					RECORRER ARRAY probar <personaje> CON ITERATOR
					MIENTRAS(RECORRER verPer)
						LLAMAR AL METODO verPer CON VARIABLE nombrePersonaje
						IMPRIMIR("- Nombre: " + nombrePersonaje.getNombre());
						IMPRIMIR("Stats fisicos: Principal - " + nombrePersonaje.getFisico1() + " Secundario - " + nombrePersonaje.getFisico2());
						IMPRIMIR("Stats Magicos: Principal - " + nombrePersonaje.getMagico1() + " Secundario - " + nombrePersonaje.getMagico2());
						IMPRIMIR("Titulo: " + nombrePersonaje.getEficacia());
						SI (nombrePersonaje PERTENECE A luchador)
							IMPRIMIR "Equipamiento -Pechera: "+ ((luchador)nombrePersonaje).isPechera() + " Guantes: "+ ((luchador)nombrePersonaje).isGuantes())
						FINSI
						SiNo (nombrePersonaje PERTENECE A hechicero)
						IMPRIMIR "Equipamiento- Tunica: " + ((hechicero)nombrePersonaje).isTunica() + " Sombrero: " + ((hechicero)nombrePersonaje).isSombrero())
						FIN SINO
					FIN MIENTRAS
					
					
				CASO 3:
					respuesta <- "No"
					HACER
						IMPRIMIR "Indica el nombre del personaje que vas a usar"
						LEER EN VARIABLE nombre
						RECORRER ARRAY probar <personaje> CON ITERATOR
						MIENTRAS(RECORRER probrar)
							LLAMAR AL METODO probrar CON VARIABLE nombrePer
							SI(!nombrePer = nombre)
								IMPRIMIR "El personaje no existe"
								respuesta <- "No"
							FINSI
							SINO
								respuesta <- "Si"
							FIN SINO
							
						FINMIENTRAS
					MIENTRAS(respuesta = "No")
					//RECOGER ESTADISTICAS	
					RECORRER ARRAY itPersonaje <personaje> CON ITERATOR	
					MIENTRAS(RECORRER itPersonaje)
						LLAMAR AL METODO itPersonaje CON VARIABLE nombrePersonaje
						SI(nombrePersonjae = nombre)
							IMPRIMIR "Has escogido al heroe" + nombrePersonaje
							//Recoger estadisticas del heroe EN EL OBJETO  (para luego meterlas en el metodo)
							nombre <- nombrePersonaje
							fisico1 <- nombrePersonaje
							fisico2 <- nombrePersonaje
							magico1 <- nombrePersonaje
							magico2 <- nombrePersonaje
							eficacia <- nombrePersonaje
							SI(nombrePersonaje PERTENECE A luchador)
								pechera <- BUSCAR Pechera DENTRO DEL METODO luchador VARIABLE nombrePersonaje 
								guantes <- BUSCAR Guantes DENTRO DEL METODO luchador VARIABLE nombrePersonaje 
							FINSI
							SINO(nombrePersonaje PETENECE A hechicero)
								tunica <- BUSCAMOS Tunica DENTRO DEL METODO hechicero VARIABLE nombrePersonaje 
								sombrero <- BUSCAMOS Sombrero DENTRO DEL METODO hechicero VARIABLE nombrePersonaje 
							FIN SINO
							//Encuentro con enemigos
							RECORRER ARRAY itEnemigos <enemigos> CON ITERATOR
							MIENTRAS (RECORRER itEnemigos Y respuesta = "Si")
								LLAMAR AL METODO itEnemigos CON VARIABLE nombreEnemigo
								hp<- LEER VARIABLE hp DE nombreEnemigo
								//Combate contra el primer jefe (SLIME GIGANTE)
								MIENTRAS(respuesta = "Si" Y hp > 0 Y nombreEnemigo = "Slime Gigante")
									hp <- LEER VARIABLE (nombre, fisico1, fisico2, magico1, magico2, eficacia, hp, guantes, pechera, tunica, sombrero) DE nombreEnemigo DE CombateSlime
									respuesta <- FinalizarCombate(respuesta, hp, nombreEnemigo,sc)
								FinMientras
								//Combate contra el segundo jefe (Jinete Fantasma)
								MIENTRAS(respuesta = "Si" Y hp > 0 Y nombreEnemigo = "Jinete Fantasma")
									hp <- LEER VARIABLE (nombre, fisico1, fisico2, magico1, magico2, eficacia, hp, guantes, pechera, tunica, sombrero) DE nombreEnemigo DE CombateSlime
									respuesta <- FinalizarCombate(respuesta, hp, nombreEnemigo,sc)
								FinMientras
								//Combate contra el tercer jefe (Dragon Ilusorio)
								MIENTRAS(respuesta = "Si" Y hp > 0 Y nombreEnemigo = "Dragon Ilusorio")
									hp <- LEER VARIABLE (nombre, fisico1, fisico2, magico1, magico2, eficacia, hp, guantes, pechera, tunica, sombrero) DE nombreEnemigo DE CombateSlime
									respuesta <- FinalizarCombate(respuesta, hp, nombreEnemigo,sc)
								FinMientras
								SI(nombreEnemigo = "Dragon Ilusorio" Y hp <- 0)
									IMPRIMIR "Has derrotado a todos los enemigos de la mazmorra"
								FinSi
							FINMIENTRAS
						FINSI	
					FINMIENTRAS	
					respuesta <- "Si"
					
				CASO 4:
					IMPRIMIR"Instrucciones"
					IMPRIMIR"El juego consiste en superar una mazmorra llena de enemigos, "
					IMPRIMIR"tu trabajo sera crear personajes capaces de vencer a los enemigos."
					IMPRIMIR"Los enemigos tendran una cantidad de vida fija y les podrias atacar cuantas veces quieras "
					IMPRIMIR"y con diferentes personajes en caso de ser necesario, los personajes creados se guardan y "
					IMPRIMIR"se puden reutilizar para atacar cualquier enemigo."
					
					IMPRIMIR"El juego termina cuando eliminas a todos los enemigos de la mazmorra."
					IMPRIMIR"Los personajes pueden tener hasta 4 atributos, 2 fisicos y 2 magicos, un titulo y 2 equipamientos, "
					IMPRIMIR"los cuales pueden ser beneficiosos o contraproducentes dependiendo del tipo de enemigo contra el que te estes enfrentado. "
					IMPRIMIR"Cada personaje tiene acceso a un titulo el cual le otorgaria una mejora de atributos dependiendo de que "
					IMPRIMIR"tipo de enemigo este combatiendo."
					IMPRIMIR"Entre los atributos fisico podemos encontrar: "
					IMPRIMIR Fisicos(fisicos);
					IMPRIMIR "Entre los atributos magicos podemos encontrar: "
					IMPRIMIR Magicos(magicos);
					IMPRIMIR"Entre los titulos podemos encontrar: "
					IMPRIMIR Titulos(magicos);
				POR DEFECTO: IMPRIMIR "Introduzca un valor valido"
					
			FinSegun
		MIENTRAS  VARIABLE respuesta = "Si"
FinAlgoritmo PRINCIPAL



ALGORITMO Repeticion 
	HACER
		IMPRIMIR "Su combate ha terminado desea usar al mismo personaje?
		IMPRIMIR "Si o No"
		LEER EN VARIABLE respuesta
		SI(!respuesta = "Si"
			respuesta <- "No"
		FinSi
		MIENTRAS (!respuesta = "Si")
			
	RETORNAR respuesta	
FinAlgoritmo



ALGORITMO Fisicos
	PARA i<-0 HASTA i < 4 INCREMENTANDO
		IMPRIMIR fisicos[i]
	FinPara
FinAlgoritmo

ALGORITMO Magicos
	PARA i<-0 HASTA i < 4 INCREMENTANDO
		IMPRIMIR magicos[i]
	FinPara
FinAlgoritmo




ALGORITMO Titulos
	PARA i<-0 HASTA i < 3 INCREMENTANDO
		IMPRIMIR eficacias[i]
	FinPara
FinAlgoritmo



ALGORITMO FinalizarCombate
	SI(hp > 0)
		IMPRIMIR "El" + nombreEnemigo + "se ha quedado a "+ hp + " puntos de vida"
		SI(nombreEnemigo PERTENECE A enemigos)
			BUSCAR hp DENTRO DEL METODO enemigos VARIABLE nombreEnemigo 
		FinSi
		IMPRIMIR "Desea utlizar el mismo personaje? Si o No"
		LEER EN VARIABLE respuesta
	FinSi
	SINO (hp <= 0)
		IMPRIMIR "Has derrotado al " + nombreEnemigo
		SI (nombreEnemigo PERTENECE A enemigos)
			BUSCAR hp DENTRO DEL METODO enemigos VARIABLE nombreEnemigos
		FinSi
		IMPRIMIR "Prepare su siguiente personaje para el proximo enemigo"
		respuesta <- "No"
	RETORNAR respuesta	
FinAlgoritmo
