ALGORITMO principal
	//DECLARACION DE VARIABLES
		Definir  opcion Como Entero
		Definir respuesta, fisicos, magicos, eficacias, Como Caracter
		respuesta<-"Si"
		fisicos<-[]
		magicos<-[]
		eficacias<-[]
		administracion admin = new administracion(); <---------------------------¿?
	
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
		
		
		ARRAAYYYY LIST ?????????????????????????????????????????????????????????????????????????
		
		
		LLAMAR METODO EnemigosPrefedefinidos DE admin Y REGRESAR (arrayEnemigos)
		
	//TITULO O CONSOLA
		HACER 
			IMPRIMIR "RPG Dungeon"
			IMPRIMIR "Bienvenido"
			IMPRIMIR "¿Que accion desea realizar?"
			IMPRIMIR "1. Crear un nuevo personaje"
			IMPRIMIR "2. Ver personajes creados"
			IMPRIMIR "3. Entrar en la mazmorra"
			IMPRIMIR "4. Crear un enemigo"
			IMPRIMIR "5. Instrucciones"
			IMPRIMIR "6. Salir"
			LEER EN VARIBALE opcion
			
			SEGUN VARIABLE opcion HACER
				CASO 1:
					LLAMAR METODO CrearPersonaje DE admin Y REGRESAR (fisicos,magicos,eficacias,arrayPersonaje)
				CASO 2:
					LLAMAR METODO VerPersonajes DE admin Y REGRESAR (arrayPersonaje)
				CASO 3:
					LLAMAR METODO Mazmorra DE admin Y REGRESAR (arrayEnemigos, arrayPersonaje)
				CASO 4:
					LLAMAR METODO CrearEnemigo DE admin Y REGRESAR (fisicos, magicos, eficacias, arrayEnemigos)
				CASO 5:
					LLAMAR METODO Instrucciones DE admin Y REGRESAR (fisicos, magicos, eficacias)
				CASO 6:
					IMPRIMIR "GRACIAS POR JUGAR !"
					respuesta <- "No"
				POR DEFECTO: 
					IMPRIMIR "Indique un valor valido !"
				
			FIN SEGUN
		MIENTRAS (respuesta = "Si")

FINALGORITMO principal


ALGORITMO administracion
INICIO METODO administracion
	//DECLARACION DE VARIABLES
		Definir respuesta,clase, fisico1, fisico2, magico1, magico2, eficacia, nombre, fisicos, magicos, eficacias, equip1, equip2 Como Caracter
		respuesta<-"Si"
		nombre<-""
		Definir victoria, guantes, sombrero, pechera, tunica Como Logico
		victoria <- false
		guantes<-false
		sombrero<-false
		pechera<-false
		tunica<-false
		Definir  hp,opcion,dmg,contador Como Entero
		hp<-0
		contador<-0
		
		
	//OBJETOS (Estaticos: e1,e2,e3 porque nosotros insertamos los valores)(Dinamicos p1 y e4 porque el ususario inserta valores)
		personaje p1  //personajes
		enemigos e1  //Enemigo 1 Estatico 
		enemigos e2  //Enemigo 2
		enemigos e3   //Enemigo 3
		enemigos e4  //Enemigo 4
		
		
INICIO METODO CrearPersonaje
	//CREAR PERSONAJE	
		IMPRIMIR " Cada personaje creado solo puede tener 2 atributos fisicos, 2 atributos magicos y 1 de efectividad"
		HACER 
			IMPRIMIR "Indique el nombre de su personaje:"
			LEER EN VARIABLE Nombre
			RECORRER ARRAY probar <personaje> CON ITERATOR 
			MIENTRAS (RECORRER probar)
				LLAMAR AL METODO probar CON VARIABLE nombrePer
				SI (VARIABLE nombrePer = nombre)
					contador++
				FINSI
			FIN MIENTRAS
			SI (contador >0)
				IMPRIMIR "El personaje ya existe"
				
			FIN SI
		FIN HACER(contador >0)
		
		HACER
			IMPRIMIR "Eliga su clase:"
			IMPRIMIR "Luchador / Hechicero"
			LEER EN VARIABLE clase
				
		MIENTRAS (!clase = "luchador" Y !clase = " Hechicero")
		
		HACER
			IMPRIMIR "¿Deseas equiparte la parte superior del equipamiento?
			IMPRIMIR "Si o No"
			LEER EN VARIABLE equip1
		MIENTRAS (!equip1 = " Si" Y !equip1 = "No")

		HACER
			IMPRIMIR "¿Deseas equiparte laparte inferior del aquipamiento?
			IMPRIMIR "Si o No"
			LEER EN VARIABLE equip2
		MIENTRAS (!equip2 ="Si" Y !equip2 = "No")
		
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
					contador++
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
				
		//RECOGER ATRIBUTOS TITULO
		IMPRIMIR "ELiga su titulo"
		LLAMAR METODO Titulos(eficacias)
		LEER EN VARIABLE eficacia
		SI (clase = "Luchador")
			LLAMAR AL OBJETO p1 CON EL METODO Luchador CON VARIABLES (nombre, fisico1, fisico2, magico1,magico2,eficacia,guantes,pechera)
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
			//Mostramos lo que se ha creado
			IMPRIMIR("Nombre: " + nombre DE p1);
			IMPRIMIR("Destreza principal: " + Fisico1 DE p1());
			IMPRIMIR("Destreza secundaria: " +  Fisico2 DE p1
			IMPRIMIR("Magia principal: " + Magico1 DE p1
			IMPRIMIR("Magia secundaria: " + Magico2 DE p1
			IMPRIMIR("Titulo: " + Eficacia DE p1
			IMPRIMIR("Pechera: " +  Pechera DE ((luchador)p1)
			IMPRIMIR("Guantes: " +  Guantes DE ((luchador)p1)			
			AÑADIMOS AL ARRAY arrayPersonaje De p1
		FIN SI
		SINO (clase ="Hechicero")
			LLAMAR AL OBJETO p1 CON EL METODO Hechicero CON VARIABLES (nombre, fisico1, fisico2, magico1,magico2,eficacia,sombrero,tunica)
			SI (equip1 = "Si")
				SI (p1 PERTENECE A hechicero)
					p1 TIPO hechicero LLAMAR AL CONSTRUCTOR Sombrero(true)
				FinSi
			FinSi
			SI (equip2 = "Si")
				SI (p1 PERTENECE A luchador)
					p1 TIPO hechicero LLAMAR AL CONSTRUCTOR Tunica(true)
				FinSi
			FinSi
			//Mostramos lo que se ha creado
			IMPRIMIR("Nombre: " + nombre DE p1);
			IMPRIMIR("Destreza principal: " + Fisico1 DE p1());
			IMPRIMIR("Destreza secundaria: " +  Fisico2 DE p1
			IMPRIMIR("Magia principal: " + Magico1 DE p1
			IMPRIMIR("Magia secundaria: " + Magico2 DE p1
			IMPRIMIR("Titulo: " + Eficacia DE p1
			IMPRIMIR("Tunica: " +  Tunica DE ((hechicero)p1)
			IMPRIMIR("Sombrero: " +  Sombrero DE ((hechicero)p1)			
			AÑADIMOS AL ARRAY arrayPersonaje De p1
			
FIN METODO CrearPersonaje




INICIO METODO VerPersonajes
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
FIN METODO VerPersonajes



INICIO METODO EnemigosPredefinidos
	//CREACION DE ENEMIGOS (En objetos)
	objeto e1 LLAMA AL constructor enemigos
	ESTABLECE EN VARIABLE Nombre "Slime Gigante"
	ESTABLECE EN VARIABLE Hp (500)
	GUARDAR EN ARRAY arrayEnemigos(e1)
	objeto e2 LLAMA AL contructor enemigos
	ESTABLECE EN VARIABLE Nombre "Jinete Fantasma"
	ESTABLECE EN VARIABLE Hp (1000)
	GUARDAR EN ARRAY arrayEnemigos(e2)
	objeto e3 LLAMA AL contructor enemigos
	ESTABLECE EN VARIABLE Nombre "Dragon Ilusorio"
	ESTABLECE EN VARIABLE Hp (1500)
	GUARDAR EN ARRAY arrayEnemigos(e3)

FIN METODO EnemigosPredefinidos



INICIO METODO Mazmorra
	DEFINIR enemigo,EF1,EF2,EM1,EM2 Como Caracter
	enemigo <- " "
	SI(victoria = (true))
		HACER
			contador<-0
			IMPRIMIR "Indica el nombre del enemigo: "
			LEER EN VARIABLE enemigo
			RECORRER ARRAY probar <enemigos> CON ITERATOR
			MIENTRAS(RECORRER probrar)
				LLAMAR AL METODO probar CON VARIABLE nombreEnemigo
				SI(nombre DE nombreEnemigo = nombre Y hp DE nombreEnemigo > 0)
					contador++
				FINSI
			FIN MIENTRAS
			SI (contador <= 0)
				IMPRIMIR "El enemigo no existe o no tiene suficiente HP"
				IMPRIMIR "¿Desea volver al menu principal? Si o No"?
				LEER EN VARIABLE respuesta
				SI (respuesta = "Si")
					contador=1
				FIN SI
			FIN SI
		MIENTRAS (contador <> 1)
	FIN SI
	
	HACER
		contador<-0
		IMPRIMIR "Indica el nombre del personaje que vas a usar: "
		LEER EN VARIABLE nombre
		RECORRER ARRAY probar <personaje> CON ITERATOR
		MIENTRAS(RECORRER probrar)
			LLAMAR AL METODO probar CON VARIABLE nombrePer
			SI(nombre DE nombrePer = nombre)
				contador++
				//Recoger estadisticas del heroe
				IMPRIMIR "Has escogido al heroe " + nombre DE nombrePer
				fisico1 <- Fisico1 DE nombrePer
				fisico2 <- Fisico2 DE nombrePer
				magico1 <- Magico1 DE nombrePer
				magico2 <- Magico2 DE nombrePer
				eficacia <- Eficacia DE nombrePer
				SI(nombrePersonaje PERTENECE A luchador)
					pechera <- BUSCAR pechera DENTRO DEL METODO luchador VARIABLE nombrePersonaje 
					guantes <- BUSCAR guantes DENTRO DEL METODO luchador VARIABLE nombrePersonaje 
				FINSI
				SINO(nombrePersonaje PETENECE A hechicero)
					tunica <- BUSCAMOS tunica DENTRO DEL METODO hechicero VARIABLE nombrePersonaje 
					sombrero <- BUSCAMOS sombrero DENTRO DEL METODO hechicero VARIABLE nombrePersonaje 
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
					SI(vicotira=(true))
						MIENTRAS(respuesta = "Si" Y hp > 0 Y Nombre DE nombreEnemigo = enemigo)
							Si(Nombre DE nombreEnemigo = enemigo)
								enemigo<- Nombre DE nombreEnemigo
								EF1<- Fisico1 DE nombreEnemigo
								EF2<- Fisico2 DE nombreEnemigo
								EM1<- Magico1 DE nombreEnemigo
								EM2<- Magico2 DE nombreEnemigo
								equip1<- Equip1 DE nombreEnemigo
								equip2<- Equip2 DE nombreEnemigo
								hp<- Hp DE nombreEnemigo
								hp<- CombateExtra CON VARIABLES (nombre, fisico1, fisico2, magico1, magico2, hp, guantes, pechera, tunica, sombrero, EF1, EF2, EM1, EM2, enemigo, equip1, equip2 DE nombreEnemigo) DE nombreEnemigo
								respuesta<- FinalizarCombate CON VARIABLES (respuesta, hp, nombreEnemigo, sc)
							FIN SI
							SINO 
								IMPRIMIR "El enemigo no existe"
								respuesta = " No"
							FIN SINO
						FIN MIENTRAS
						IMPRIMIR "Has derrotado a todos los enemigos de la mazmorra"
					FIN SI
					SI (Nombre DE nombreEnemigo = "Dragon Ilusorio" Y hp <= 0)
						IMPRIMIR "Has derrotado a todos los enemigos de la mazmorra"
						victoria <- true
						
					FIN SI
				FINMIENTRAS
			FINSI
		FIN MIENTRAS
		SI  (contador <= 0)
			IMPRIMIR "El personaje no exite"
		FIN SI
	MIENTRAS contador <= 0)
		contador<- 0
		respuesta<- "Si"
		
FIN METODO Mazmorra

INICIO METODO CrearEnemigo	
	DEFINIR enemgo, opcion2 Como Caracter
	enemigo<-" "
	SI(victoria = false)
		IMPRIMIR "Tienes que derrotar a todos los enemigos de la mazmorra para acceder a esta opcion"
	FIN SI
	SINO(victoria = true)
		IMPRIMIR "1. Crear un enemigo"
		IMPRIMIR "2. Modificiar un enemigo"
		LEER EN VARIABLE opcion
		
		SEGUN VARIABLE opcion HACER
			CASO 1:
				IMPRIMIR "Los enemigos creado solo puede tener ventajas y debilidades 2 fisicos y 2 magicos"
				HACER
					contador<-0
					IMPRIMIR "Indica el nombre del enemigo"
					LEER EN VARIBALE nombre
					RECORRER ARRAY probar <enemigos> CON ITERATOR
					MIENTRAS(RECORRER probar)
						LLAMAR AL METODO probar CON VARIABLE nombreEnemigo
						SI(Nombre DE nombreEnemigo = nombre)
							contador++
						FIN SI
					FIN MIENTRAS
					SI(contador > 0)
						IMPRIMIR "El enemigo ya existe"
					FIN SI
				MIENTRAS (contador <= 0)
				HACER
					IMPRIMIR "La clase contra el cual es debil: "
					IMPRIMIR "Luchador / Hechicero"
					LEER EN VARIBALE clase
				MIENTRAS(!clase = "Luchador" Y !clase = "No")
				HACER
					IMPRIMIR "¿Interfiere el equipamiento superior?"
					IMPRIMIR "Si o No"
					LEER EN VARIBALE equip1
				MIENTRAS(!equip1 = "Si" Y !equip1 = "No")
				HACER
					IMPRIMIR "¿Interfiere el equipamiento inferior?"
					IMPRIMIR "Si o No"
					LEER EN VARIBALE equip2
				MIENTRAS(!equip2 = "Si" Y !equip2 = "No")
				
				//Recoger atributos fisicos
				HACER
					IMPRIMIR "Eliga sus debilidades fisicas"
					LLAMAR METODO Fisicos(fisicos)
					IMPRIMIR "Principal:"
					LEER EN VARIABLE fisico1
					IMPRIMIR "Secundario:"
					LEER EN VARIABLE fisico2
					PARA i<-0 HASTA i<fisicos lenght INCREMENTANDO
						SI(fisico1 = fisicos[i])
							contador++
						FIN SI
						SI(fisico2 = fisicos[i])
							contador++
						FIN SI
					FIN PARA
					SI (contador = 2)
						respuesta <- "Si"
						contador <- 0
					FIN SI
					SINO (contador <>2)
						IMPRIMIR "Indique un atributo existente"
						respuesta <- "No"
						contador <- 0
					FIN SINO
				MIENTRAS (respuesta = "No")
				//Recoger atributos magicos
				HACER
					IMPRIMIR "Eliga sus debilidades magicas"
					LLAMAR METODO Magicos(magicos)
					IMPRIMIR "Principal:"
					LEER EN VARIABLE magico1
					IMPRIMIR "Secundario:"
					LEER EN VARIABLE magico2
					PARA i<-0 HASTA i<magicos lenght INCREMENTANDO
						SI(magico1 = magicos[i])
							contador++
						FIN SI
						SI(magico2 = magicos[i])
							contador++
						FIN SI
					FIN PARA
					SI (contador = 2)
						respuesta <- "Si"
						contador <- 0
					FIN SI
				SINO (contador <>2)
					IMPRIMIR "Indique un atributo existente"
					respuesta <- "No"
					contador <- 0
					FIN SINO
				MIENTRAS (respuesta = "No")
				HACER
					IMPRIMIR  "Indica la vida del enemigo"	
					LEER EN VARIABLE hp
					SI(hp <= 0)
						IMPRIMIR "El enemigo no tiene suficiente vida"
					FIN SI
				MIENTRAS (hp <= 0)
				
				LLAMAR AL OBJETO e4 CON EL METODO enemigos CON VARIABLES (nombre, fisico1, fisico2, magico1, magico2, equip1, equip2, hp)
				IMPRIMIR "Nombre" + Nombre DE e4
				IMPRIMIR "Debilidad fisica principal" +Fisico1 DE e4
				IMPRIMIR "Debilidad fisica secundaria: " + Fisico2 DE e4
				IMPRIMIR "Debilidad magica principal: " + Magico1 DE e4
				IMPRIMIR "Debilidad magica secundaria: " Magico2 DE e4
				IMPRIMIR "Hp: " + Hp De enemigos(e4)	
				
			CASO 2:
				HACER
					contador<-0
					IMPRIMIR "Indica el nombre del enemigo que quiere modificar: "
					LEER EN VARIBALE enemigo
					RECORRER ARRAY probar <enemigos> CON ITERATOR
					MIENTRAS(RECORRER probar)
						LLAMAR AL METODO probar CON VARIABLE nombreEne
						SI(Nombre DE nombreEne = nombre)
							contador++
							IMPRIMIR "¿Que atributo desea modificar?"
							IMPRIMIR "HP / Debilidades / Otros"
							LEER EN VARIABLE opcion2
							SI(opcion2 = "HP")
								HACER
									IMPRIMIR "Indica la vida del enemigo"
									LEER EN VARIBALE hp
									SI (hp <= 0)
										IMPRIMIR "El enemigo no tiene suficiente vida"
									FINSI
								MIENTRAS (hp <= 0)
							FIN SI
							SINO(opcion2 = "Debilidades")
								IMPRIMIR "¿Desea modificar una debilidad Principal o Secundaria?"
								LEER EN RESPUESTA
								SI(respuesta = "Principal"
									IMPRIMIR"¿Desea modificar una debilidad Magica o Fisica?"
									LEER EN VARIABLE respuesta
									SI (respuesta = "Magia")
										IMPRIMIR "Indique la debilidad magica"
										LLAMAR METODO Magicos(magicos)
										LEER VARIABLE EN magico1
										PASAR magico1 A magico1 DE nombreEne
									FIN SI
									SINO
										IMPRIMIR "Indique la debilidad magica"
										LLAMAR METODO Magicos(magicos)
										LEER VARIABLE EN magico2
										PASAR magico2 A magico2 DE nombreEne
									FIN SINO
								FIN SI
								SINO
									IMPRIMIR "¿Desea modificar una debilidad Magica o Fisica?"
									LEER EN VARIABLE respuesta
									SI (respuesta = "Fisicos")
										IMPRIMIR "Indique la debilidad fisica"
										LLAMAR METODO Fisicos(fisicos)
										LEER VARIABLE EN fisico1
										PASAR fisico1 A fisico1 DE nombreEne
									FIN SI
									SINO
										IMPRIMIR "Indique la debilidad fisica"
										LLAMAR METODO Fisicos(fisicos)
										LEER VARIABLE EN fisico2
										PASAR fisico2 A fisico2 DE nombreEne
									FIN SINO
								FIN SINO
							FIN SINO
							SINO(opcion2 = "Otros")
								IMPRIMIR "¿Desea modificar como afecta el quipamiento Superior o Inferior?"
								LEER EN VARIABLE respuesta
								SI(respuesta = "Superior")
									IMPRIMIR "Indique si afecta"
									LEER EN VARIBALE equip1
									PASAR equip1 A equip1 DE nombreEne
								FIN SI
								SINO
									IMPRIMIR "Indique si afecta"
									LEER EN VARIABLE equip2
									PASAR equip2 A equip2 DE nombreEne
								FIN SINO
							FIN SINO
						FIN SI
					FIN MIENTRAS
					SI (contador <=0)
						IMPRIMIR "El enemigo no existe"
					FIN SI
				MIENTRAS(contador>0)	
			POR DEFECTO 
				IMPRIMIR "Indica un valor valido"
		FIN SEGUN
	FIN SINO
FIN METODO CrearEnemigo

INICIO METODO Instrucciones
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
	FIN METODO Instrucciones

INICIO METODO Repeticion
	HACER
		IMPRIMIR "Su combate ha terminado desea usar al mismo personaje?
		IMPRIMIR "Si o No"
		LEER EN VARIABLE respuesta
		SI(!respuesta = "Si"
			respuesta <- "No"
		FinSi
	MIENTRAS (!respuesta = "Si")

RETORNAR respuesta	
FIN METODO Repeticion

INICIO METODO Fisicos
	PARA i<-0 HASTA i < fisicos length INCREMENTANDO
		IMPRIMIR fisicos[i]
	FinPara
FIN METODO Fisicos


INICIO METODO Magicos
	PARA i<-0 HASTA i < magicos length INCREMENTANDO
		IMPRIMIR magicos[i]
	FinPara
FIN METODO Magicos


INICIO METODO Titulos
	PARA i<-0 HASTA i < eficacias length INCREMENTANDO
		IMPRIMIR eficacias[i]
	FinPara
FIN METODO Titulos

INICIO METODO FinalizarCombate
	SI(hp > 0)
		IMPRIMIR "El" + nombreEnemigo + "se ha quedado a "+ hp + " puntos de vida"
		SI(nombreEnemigo PERTENECE A enemigos)
			BUSCAR hp DENTRO DEL METODO enemigos VARIABLE nombreEnemigo 
		FinSi
		IMPRIMIR "Desea utlizar el mismo personaje? Si o No"
		LEER EN VARIABLE respuesta
	FI
	SINO (hp <= 0)
		IMPRIMIR "Has derrotado al " + nombreEnemigo
			SI (nombreEnemigo PERTENECE A enemigos)
				BUSCAR hp DENTRO DEL METODO enemigos VARIABLE nombreEnemigos
			FinSi
		IMPRIMIR "Prepare su siguiente personaje para el proximo enemigo"
		respuesta <- "No"
	FIN SINO
	RETORNAR respuesta	
FIN METODO FinalizarCombate

