#include <stdint.h>

void kernel_main() {
    const char *msg = "Hola desde el Kernel!";
    char *vidptr = (char*)0xb8000; // Dirección de memoria de la pantalla
    int i = 0;

    // Escribir en la pantalla
    while (msg[i] != '\0') {
        vidptr[i * 2] = msg[i]; // Caracter
        vidptr[i * 2 + 1] = 0x07; // Atributo (blanco sobre negro)
        i++;
    }

    // Bucle infinito
    while (1);
}
