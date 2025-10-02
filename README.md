# Parcial-2-Organizacion-Computadores

# Programa: Raíz Cuadrada Entera con sumas de impares

Este programa calcula la **parte entera de la raíz cuadrada** de un número usando sumas sucesivas de números impares.

## Cómo ejecutar

1. Coloca el número de entrada en la posición **RAM[18]**.  

2. Ejecuta el programa en el simulador CPUEMULATOR.  

3. Cuando el programa termina, el resultado se encuentra en la posición **RAM[19]**.  
.  
## Notas
- El número debe ser **no negativo**.  


# Proyecto: Tipografías en Hack Assembly

##  Descripción
Este programa en **lenguaje ensamblador de Nand2Tetris** dibuja en pantalla letras creadas con bitmaps personalizados.  
Cada letra se almacena como una secuencia de valores en memoria y se imprime directamente en la región de video (`SCREEN`).  
El programa permite:  
- Mostrar letras individuales al presionar una tecla.  
- Mostrar letras conjuntas una al lado de la otra.  
- Limpiar la pantalla al presionar la tecla **SPACE**.  

##  Ejecución
1. Abrir el **CPU Emulator** de Nand2Tetris.  
2. Cargar el archivo `Iniciales.asm`.  
4. Iniciar la ejecución (`Run` o `Step`).
   - Aparece las tres iniciales de las integrantes del grupo
   - Presionar **SPACE** → se borra la pantalla completa. 
5. Interactuar con el teclado (`KBD`):  
   - Presionar `A` → se dibuja la letra **A**.  
   - Presionar `D` → se dibuja la letra **D**.  
   - Presionar `L` → se dibuja la letra **L**.  
   - Presionar **SPACE** → se borra la pantalla completa.  

##  Anotaciones importantes
- La memoria de la pantalla (`SCREEN`) está organizada en palabras de **16 bits**, y cada fila son **32 palabras**.  
- Para que las letras aparezcan consecutivas y no se monten, se calculó manualmente el **desplazamiento de 32 posiciones en memoria**.  
- Las tipografías fueron diseñadas con la herramienta **Jack Bitmap Editor** y adaptadas manualmente al ensamblador.  
- Se implementó la función de **borrar pantalla (SPACE)** recorriendo toda la región de video y escribiendo ceros.  

---

# Informe
- https://eafit-my.sharepoint.com/:w:/g/personal/lindaburg_eafit_edu_co/EQ7hoCC6vMFMk2B2AZqr2v8BHbg5PPPw2FpLZOL9wqpnzw?e=daAa1q
