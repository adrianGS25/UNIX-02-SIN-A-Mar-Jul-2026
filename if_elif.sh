#!/bin/bash                                      
# Indica que el script se ejecuta con Bash

USER_INPUT="${1}"                                # Guarda el primer argumento dado al script en la variable USER_INPUT

if [[ -z "${USER_INPUT}" ]]; then               # Verifica si USER_INPUT está vacío (-z = zero length)
    echo "You must provide an argument!"         # Si está vacío, muestra mensaje de error
    exit 1                                       # Termina el script con código de error 1
fi                                               # Fin del primer bloque if

if [[ -f "${USER_INPUT}" ]]; then               # Verifica si lo ingresado es un ARCHIVO (-f = file)
    echo "${USER_INPUT} is a file."              # Si es archivo, lo imprime en pantalla
elif [[ -d "${USER_INPUT}" ]]; then             # Si no es archivo, verifica si es un DIRECTORIO (-d = directory)
    echo "${USER_INPUT} is a directory."         # Si es directorio, lo imprime en pantalla
else                                             # Si no es ni archivo ni directorio
    echo "${USER_INPUT} is not a file or a directory."  # Muestra que no es ninguno de los dos
fi                                               # Fin del segundo bloque if