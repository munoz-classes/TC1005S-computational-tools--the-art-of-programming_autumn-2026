#!/bin/bash
# ==============================================================================
# GENERADOR DEL ESCAPE ROOM FORENSE - SEMANA TEC (DÍA 1: UNIX Y COMPILACIÓN)
# Uso para el profesor: bash generador_escape_room.sh
# Resultado: Genera la carpeta "Mision_Rescate" y el archivo "misterio_dia1.zip"
# ==============================================================================

echo "Construyendo el escenario del Escape Room Forense..."

# Limpiar versión previa si existe
rm -rf Mision_Rescate misterio_dia1.zip

# 1. Crear estructura principal de directorios
mkdir -p Mision_Rescate/{Finanzas,Legal,Diseno_Industrial,Ingenieria,Servidores_Logs}
mkdir -p Mision_Rescate/Servidores_Logs/{Enero,Febrero,Marzo,Abril,Respaldo_Antiguo}
mkdir -p Mision_Rescate/Ingenieria/{Prototipos_Araña,Telemetria_Cohete,Modulos_IA}

# 2. Crear archivo de bienvenida (Punto de partida del alumno)
cat << 'EOF' > Mision_Rescate/LEEME_URGENTE.txt
=======================================================================
ALERTA DE SEGURIDAD - OPERACIÓN RESCATE DIGITAL (SEMANA TEC)
=======================================================================
El servidor central del laboratorio de prototipos fue saboteado anoche.
El sistema de lanzamiento y los robots quedaron bloqueados.

Sabemos que el saboteador dejó 3 PISTAS repartidas en este servidor
que forman la CLAVE DE ACTIVACIÓN para restaurar el sistema.

REGLAS DE LA MISIÓN:
1. Prohibido usar el explorador gráfico o el mouse. Todo se hace en Terminal.
2. Usa comandos de Unix (ls, cd, cat, find, grep, mkdir, cp, mv).

-----------------------------------------------------------------------
MISION 1 (Archivos Ocultos):
El saboteador escondió la PISTA 1 en una carpeta oculta (recuerda que en
Unix los archivos y carpetas ocultos empiezan con un punto ".") dentro
del departamento de "Ingenieria".
Usa el comando "ls -la" para explorar hasta encontrarla.
=======================================================================
EOF

# 3. Poblar carpetas con cientos de archivos "trampa" (Ruido digital)
for i in {1..30}; do
    echo "Factura #00$i - Estado: PAGADO - Monto: $((RANDOM % 9000 + 1000)) MXN" > "Mision_Rescate/Finanzas/factura_2026_$i.txt"
    echo "Contrato confidencial #$i - Cláusula estándar sin anomalías." > "Mision_Rescate/Legal/contrato_cliente_$i.txt"
    echo "Render 3D Pieza #$i - Polígonos verificados: OK" > "Mision_Rescate/Diseno_Industrial/modelo_cad_$i.txt"
done

for i in {1..40}; do
    echo "[2026-10-04 03:$((RANDOM % 50 + 10)):12] INFO: Conexión normal desde terminal $i. Sin incidentes." > "Mision_Rescate/Servidores_Logs/Marzo/registro_sistema_$i.log"
    echo "[2026-10-04 04:$((RANDOM % 50 + 10)):45] WARN: Intento de acceso rutinario en nodo $i." >> "Mision_Rescate/Servidores_Logs/Marzo/registro_sistema_$i.log"
done

# 4. SEMBRAR LA PISTA 1 (Oculta con punto "." para obligar a usar ls -la)
mkdir -p Mision_Rescate/Ingenieria/Telemetria_Cohete/.boveda_secreta
cat << 'EOF' > Mision_Rescate/Ingenieria/Telemetria_Cohete/.boveda_secreta/.pista_1.txt
=======================================================================
¡FELICIDADES! Encontraste la PISTA 1 usando "ls -la" y "cat".
>> PISTA 1: [ KRAKEN ]
-----------------------------------------------------------------------
MISION 2 (Búsqueda rápida entre cientos de archivos con "grep"):
El saboteador dejó la PISTA 2 escrita dentro de uno de los 40 archivos
de registro en la carpeta "Servidores_Logs/Marzo/".
Abrir los 40 archivos uno por uno te tomaría demasiado tiempo.

Usa el comando "grep" para buscar la palabra exacta "SABOTAJE" dentro
de toda la carpeta "Servidores_Logs/Marzo/".
=======================================================================
EOF

# 5. SEMBRAR LA PISTA 2 (Escondida dentro del archivo log #27 para usar grep)
cat << 'EOF' >> Mision_Rescate/Servidores_Logs/Marzo/registro_sistema_27.log
[2026-10-04 04:59:59] CRITICAL_SABOTAJE: ¡Me descubriste con grep! >> PISTA 2: [ APOLO ] -> Para la MISION 3: Usa el comando "find" desde la carpeta raíz Mision_Rescate para localizar un archivo perdido que se llama exactamente "llave_maestra.key".
EOF

# 6. SEMBRAR LA PISTA 3 (Enterrada profundamente para usar find)
mkdir -p Mision_Rescate/Servidores_Logs/Respaldo_Antiguo/2024/Temp/Cache_Oculto/Nivel_Profundo
cat << 'EOF' > Mision_Rescate/Servidores_Logs/Respaldo_Antiguo/2024/Temp/Cache_Oculto/Nivel_Profundo/llave_maestra.key
=======================================================================
¡MISIÓN FORENSE COMPLETADA! Localizaste el archivo con "find".
>> PISTA 3: [ 2026 ]
-----------------------------------------------------------------------
TU CLAVE DE ACTIVACIÓN COMPLETA ES: KRAKEN-APOLO-2026

PASO FINAL EN LA TERMINAL:
1. Regresa a la carpeta principal "Mision_Rescate".
2. Crea una carpeta llamada "Evidencia_Lunes" usando mkdir.
3. Guarda las 3 pistas en "Evidencia_Lunes/clave_encontrada.txt".
4. Corre el archivo "codigo_cohete_roto.py" (o el código de Arduino en
   Wokwi) para completar el Tema 1.3 de Compilación en Línea.
5. Exporta tu historial con: history > bitacora_lunes.txt
=======================================================================
EOF

# 7. Crear el archivo con 2 errores de sintaxis para el Tema 1.3 (Compilación/Ejecución)
cat << 'EOF' > Mision_Rescate/codigo_cohete_roto.c
/* ====================================================================
   TEMA 1.3: RETO DE COMPILACIÓN EN LÍNEA (C / Arduino / Wokwi)
   INSTRUCCIONES:
   Este código de despegue tiene 2 ERRORES DE SINTAXIS que impiden que
   el compilador genere el archivo ejecutable.
   1. Intenta compilarlo con: gcc codigo_cohete_roto.c -o despegue
      (o pégalo en un compilador C en línea como OnlineGDB).
   2. Lee el mensaje del compilador, corrige los 2 errores y pon tu
      NOMBRE y la CLAVE DE ACTIVACIÓN donde se indica.
   ==================================================================== */

#include <stdio.h>

int main() {
    // Reemplaza con tu Nombre o Matrícula y la Clave de las 3 pistas:
    char agente[] = "ESCRIBE_AQUI_TU_NOMBRE";
    char clave[] = "ESCRIBE_AQUI_LA_CLAVE_DE_3_PISTAS";

    // ERROR 1: Falta algo al final de la siguiente línea...
    int conteo = 3

    printf("============================================\n");
    printf("SISTEMA DE LANZAMIENTO RECUPERADO \n");
    printf("Agente a cargo: %s\n", agente);
    printf("Clave ingresada: %s\n", clave);
    printf("Iniciando secuencia en T-menos %d segundos...\n", conteo);

    // ERROR 2: La comilla de cierre o el paréntesis están mal aquí...
    printf("COMPILACIÓN EXITOSA: ¡Despegue autorizado!\n";

    return 0;
}
EOF

# 8. Comprimir todo en misterio_dia1.zip si zip está instalado
if command -v zip &> /dev/null; then
    zip -rq misterio_dia1.zip Mision_Rescate
    echo "¡Listo! Se creó la carpeta 'Mision_Rescate' y el archivo 'misterio_dia1.zip'."
else
    echo "¡Listo! Se creó la carpeta 'Mision_Rescate' (puedes comprimirla en .zip para subirla a Canvas)."
fi