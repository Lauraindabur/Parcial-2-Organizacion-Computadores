
// Objetivo: calcular la parte entera de la raíz cuadrada del número
// almacenado en RAM[18] usando la suma sucesiva de números impares.
// Proceso -> sumar impares (1 + 3 + 5 + ...) hasta que la suma
// supere al número objetivo. El contador de impares sumados (n)
// contiene la raíz cuadrada entera (parte entera) cuando la suma
// sobrepasa el valor; por eso el resultado queda en RAM[19].

// Convenciones / mapa de registros RAM usados (explicado):
// RAM[18] - número de entrada (n), valor cuya raíz cuadrada entera queremos
// RAM[19] - resultado: contador de impares sumados (la raíz entera)
// RAM[17] - acumulador de la suma de impares (inicia en 0)
// RAM[20] - impar actual que se suma (inicia en 1)

// Proceso del codigo:
// - Empezamos con suma = 0 y primo impar actual = 1.
// - En cada iteración sumamos el impar actual a la suma.
// - Si la suma supera al número de entrada, terminamos.
// - Si no se supera, incrementamos el contador (resultado) y
//   avanzamos al siguiente impar (sumamos 2 al impar actual).


// Inicializa acumulador (RAM[17]) = 0
@0
D=A
@17
M=D       // RAM[17] = 0 (suma acumulada)

// Inicializa impar actual (RAM[20]) = 1
@1
D=A
@20
M=D       // RAM[20] = 1 (primer impar)

// Inicializa contador/resultado (RAM[19]) = 0
@0
D=A
@19
M=D       // RAM[19] = 0 (contador de impares sumados = resultado)

// ------------------ loop principal ------------------
(loop)
    // Cargar impar actual (RAM[20]) en D
    @20
    D=M        // D = impar_actual
    // Sumarlo al acumulador (RAM[17] += D)
    @17
    M=M+D      // RAM[17] = RAM[17] + impar_actual

    // Comprobar si la suma se pasó del número objetivo (RAM[18])
    @17
    D=M        // D = suma_acumulada
    @18
    D=D-M      // D = suma_acumulada - numero_objetivo
    @END
    D;JGT      // si suma_acumulada > numero_objetivo -> goto END

    // Si no se pasó: incrementar el contador de impares sumados (resultado)
    @19
    M=M+1      // RAM[19] = RAM[19] + 1

    // Avanzar al siguiente impar: sumar 2 a RAM[20]
    @20
    M=M+1      // primero +1
    M=M+1      // segundo +1 => total +2


    @loop
    0;JMP

(END)
    @END
    0;JMP