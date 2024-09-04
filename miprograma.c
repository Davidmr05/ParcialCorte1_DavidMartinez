#include <stdio.h>
#include <string.h>
#include <ctype.h>

#define MAX_LINE 1024

int contarCoincidencias(FILE *archivo, const char *palabraClave) {
    char linea[MAX_LINE];
    int contador = 0;
    size_t largoClave = strlen(palabraClave);

    while (fgets(linea, MAX_LINE, archivo) != NULL) {
        char *pos = linea;
        while ((pos = strstr(pos, palabraClave)) != NULL) {
            if ((pos == linea || !isalnum(*(pos - 1))) && !isalnum(*(pos + largoClave))) {
                contador++;
            }
            pos += largoClave;
        }
    }
    return contador;
}

int main(int argc, char *argv[]) {
    if (argc != 3) return 1;

    FILE *archivo = fopen(argv[1], "r");
    if (archivo == NULL) return 1;

    int coincidencias = contarCoincidencias(archivo, argv[2]);
    fclose(archivo);

    printf("La palabra '%s' se repite %d veces en el texto.\n", argv[2], coincidencias);

    return 0;
}