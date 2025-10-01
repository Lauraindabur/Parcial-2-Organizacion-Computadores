# Parcial-2-Organizacion-Computadores
Encontrar parte entera de la raíz cuadrada y tipografía en screen

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
2. Cargar el archivo `Parcial_2.asm`.  
3. Iniciar la ejecución (`Run` o `Step`).
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

