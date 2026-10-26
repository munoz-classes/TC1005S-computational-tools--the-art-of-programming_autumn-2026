---
marp: true
theme: default
paginate: true
size: 16:9
header: '<svg class="icon"><use href="#rocket"/></svg> **SEMANA TEC: EL ARTE DE LA PROGRAMACIÓN** | Campus Toluca'
footer: '<svg class="icon"><use href="#prof"/></svg> Prof. Alison Muñoz Capote · Tecnológico de Monterrey'
style: |
  section {
    background: linear-gradient(135deg, #f8f9fa 0%, #e9ecef 100%);
    color: #343a40;
    font-family: 'Segoe UI', Roboto, Helvetica, sans-serif;
    padding: 44px 56px;
  }
  h1 { color: #1d3557; font-size: 2.0em; margin-bottom: 0.2em; border-bottom: 2px solid rgba(29, 53, 87, 0.15); padding-bottom: 8px;}
  h2 { color: #457b9d; font-size: 1.45em; border-bottom: 1px solid rgba(69,123,157,0.25); padding-bottom: 6px; }
  h3 { color: #e63946; font-size: 1.15em; font-weight: 600; }
  strong { color: #1d3557; font-weight: 700; }
  code { background: #e2e8f0; color: #d62828; padding: 2px 8px; border-radius: 6px; font-family: 'Courier New', monospace; font-weight: bold; }
  pre { background: #ffffff !important; border: 1px solid #ced4da; border-left: 5px solid #457b9d; border-radius: 12px; padding: 14px !important; font-size: 0.78em; box-shadow: 0 4px 6px rgba(0,0,0,0.04); }
  pre code { background: transparent; color: #495057; font-weight: normal; }
  table { width: 100%; border-collapse: collapse; font-size: 0.78em; margin-top: 8px; box-shadow: 0 2px 4px rgba(0,0,0,0.05); border-radius: 6px; overflow: hidden; }
  th { background: #457b9d; color: #ffffff; padding: 10px 12px; text-align: left; }
  td { background: #ffffff; padding: 9px 12px; border-bottom: 1px solid #e9ecef; color: #495057; }
  blockquote { background: rgba(69,123,157,0.06); border-left: 5px solid #457b9d; padding: 10px 18px; border-radius: 8px; color: #343a40; font-size: 0.9em; font-style: italic; }
  .icon { width: 1.1em; height: 1.1em; vertical-align: -0.15em; fill: none; stroke: currentColor; stroke-width: 2; stroke-linecap: round; stroke-linejoin: round; display: inline-block; margin-right: 4px; }
  .icon-h1 { color: #1d3557; width: 1.2em; height: 1.2em; }
  .icon-h2 { color: #457b9d; width: 1.1em; height: 1.1em; }
---

<svg style="display:none;" xmlns="http://www.w3.org/2000/svg">
  <defs>
    <g id="rocket"><path d="M4.5 16.5c-1.5 1.26-2 5-2 5s3.74-.5 5-2l.5-.5a5.4 5.4 0 0 1 7-7l1.5-1.5C18.16 3.84 20 4 20 4s.16 1.84-1.5 3.5l-1.5 1.5a5.4 5.4 0 0 1-7 7l-.5.5Z"/><path d="m12 15-3-3a22 22 0 0 1 3.81-4.14c.73-.66 1.48-1.22 2.19-1.63L16 8l-1.77 1.77c-.4.71-.97 1.46-1.63 2.19A22 22 0 0 1 12 15Z"/><path d="m8.5 11.5 3 3"/><path d="M15.5 8.5 12 5"/></g>
    <g id="prof"><circle cx="12" cy="7" r="4"/><path d="M5.5 21v-2a4 4 0 0 1 4-4h5a4 4 0 0 1 4 4v2"/></g>
    <g id="detective"><circle cx="11" cy="11" r="8"/><line x1="21" y1="21" x2="16.65" y2="16.65"/></g>
    <g id="ban"><circle cx="12" cy="12" r="10"/><line x1="4.93" y1="4.93" x2="19.07" y2="19.07"/></g>
    <g id="globe"><circle cx="12" cy="12" r="10"/><path d="M12 2a15.3 15.3 0 0 1 4 10 15.3 15.3 0 0 1-4 10 15.3 15.3 0 0 1-4-10 15.3 15.3 0 0 1 4-10z"/><line x1="2" y1="12" x2="22" y2="12"/></g>
    <g id="bolt"><polygon points="13 2 3 14 12 14 11 22 21 10 12 10 13 2"/></g>
    <g id="question"><circle cx="12" cy="12" r="10"/><path d="M9.09 9a3 3 0 0 1 5.83 1c0 2-3 3-3 3"/><line x1="12" y1="17" x2="12.01" y2="17"/></g>
    <g id="mouse"><rect x="5" y="2" width="14" height="20" rx="7"/><line x1="12" y1="6" x2="12" y2="10"/></g>
    <g id="keyboard"><rect x="2" y="4" width="20" height="16" rx="2"/><path d="M6 8h.01M10 8h.01M14 8h.01M18 8h.01M6 12h.01M10 12h.01M14 12h.01M18 12h.01M8 16h8"/></g>
    <g id="tree"><path d="M12 22v-6M12 16a4 4 0 0 0-4-4H6a4 4 0 0 1-4-4V6a4 4 0 0 1 4-4h12a4 4 0 0 1 4 4v2a4 4 0 0 1-4 4h-2a4 4 0 0 0-4 4z"/></g>
    <g id="compass"><circle cx="12" cy="12" r="10"/><polygon points="16.24 7.76 14.12 14.12 7.76 16.24 9.88 9.88 16.24 7.76"/></g>
    <g id="gear"><circle cx="12" cy="12" r="3"/><path d="M19.4 15a1.65 1.65 0 0 0 .33 1.82l.06.06a2 2 0 0 1 0 2.83 2 2 0 0 1-2.83 0l-.06-.06a1.65 1.65 0 0 0-1.82-.33 1.65 1.65 0 0 0-1 1.51V21a2 2 0 0 1-2 2 2 2 0 0 1-2-2v-.09A1.65 1.65 0 0 0 9 19.4a1.65 1.65 0 0 0-1.82.33l-.06.06a2 2 0 0 1-2.83 0 2 2 0 0 1 0-2.83l.06-.06a1.65 1.65 0 0 0 .33-1.82 1.65 1.65 0 0 0-1.51-1H3a2 2 0 0 1-2-2 2 2 0 0 1 2-2h.09A1.65 1.65 0 0 0 4.6 9a1.65 1.65 0 0 0-.33-1.82l-.06-.06a2 2 0 0 1 0-2.83 2 2 0 0 1 2.83 0l.06.06a1.65 1.65 0 0 0 1.82.33H9a1.65 1.65 0 0 0 1-1.51V3a2 2 0 0 1 2-2 2 2 0 0 1 2 2v.09a1.65 1.65 0 0 0 1 1.51 1.65 1.65 0 0 0 1.82-.33l.06-.06a2 2 0 0 1 2.83 0 2 2 0 0 1 0 2.83l-.06.06a1.65 1.65 0 0 0-.33 1.82V9a1.65 1.65 0 0 0 1.51 1H21a2 2 0 0 1 2 2 2 2 0 0 1-2 2h-.09a1.65 1.65 0 0 0-1.51 1z"/></g>
    <g id="alert"><path d="M12 2v2M12 20v2M4.93 4.93l1.41 1.41M17.66 17.66l1.41 1.41M2 12h2M20 12h2M6.34 17.66l-1.41 1.41M19.07 4.93l-1.41 1.41"/><circle cx="12" cy="12" r="5"/></g>
    <g id="doc"><path d="M14 2H6a2 2 0 0 0-2 2v16a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V8z"/><path d="M14 2v6h6"/><line x1="16" y1="13" x2="8" y2="13"/><line x1="16" y1="17" x2="8" y2="17"/><polyline points="10 9 9 9 8 9"/></g>
    <g id="warning"><path d="M10.29 3.86L1.82 18a2 2 0 0 0 1.71 3h16.94a2 2 0 0 0 1.71-3L13.71 3.86a2 2 0 0 0-3.42 0z"/><line x1="12" y1="9" x2="12" y2="13"/><line x1="12" y1="17" x2="12.01" y2="17"/></g>
    <g id="check"><path d="M22 11.08V12a10 10 0 1 1-5.93-9.14"/><polyline points="22 4 12 14.01 9 11.01"/></g>
    <g id="list"><line x1="8" y1="6" x2="21" y2="6"/><line x1="8" y1="12" x2="21" y2="12"/><line x1="8" y1="18" x2="21" y2="18"/><line x1="3" y1="6" x2="3.01" y2="6"/><line x1="3" y1="12" x2="3.01" y2="12"/><line x1="3" y1="18" x2="3.01" y2="18"/></g>
    <g id="target"><circle cx="12" cy="12" r="10"/><circle cx="12" cy="12" r="6"/><circle cx="12" cy="12" r="2"/></g>
    <g id="calc"><rect x="4" y="2" width="16" height="20" rx="2"/><line x1="8" y1="6" x2="16" y2="6"/><line x1="12" y1="10" x2="12" y2="10"/><line x1="8" y1="10" x2="8" y2="10"/><line x1="16" y1="10" x2="16" y2="10"/><line x1="8" y1="14" x2="8" y2="14"/><line x1="12" y1="14" x2="12" y2="14"/><line x1="16" y1="14" x2="16" y2="14"/><line x1="8" y1="18" x2="8" y2="18"/><line x1="12" y1="18" x2="12" y2="18"/><line x1="16" y1="18" x2="16" y2="18"/></g>
    <g id="traffic"><rect x="6" y="2" width="12" height="20" rx="4"/><circle cx="12" cy="7" r="2"/><circle cx="12" cy="12" r="2"/><circle cx="12" cy="17" r="2"/></g>
    <g id="para"><path d="M12 2c-5.5 0-10 4.5-10 10h20c0-5.5-4.5-10-10-10zM12 12l-4 8M12 12l4 8M8 20h8"/></g>
    <g id="trophy"><path d="M8 21h8M12 17v4M7 4h10M5 4v5a7 7 0 0 0 14 0V4M3 4h2M19 4h2"/></g>
    <g id="galaxy"><circle cx="12" cy="12" r="2"/><path d="M4 12a8 8 0 0 1 8-8 8 8 0 0 0 8 8 8 8 0 0 1-8 8 8 8 0 0 0-8-8z"/></g>
    <g id="cycle"><polyline points="23 4 23 10 17 10"/><polyline points="1 20 1 14 7 14"/><path d="M3.51 9a9 9 0 0 1 14.85-3.36L23 10M1 14l4.64 4.36A9 9 0 0 0 20.49 15"/></g>
    <g id="branch"><line x1="6" y1="3" x2="6" y2="15"/><circle cx="18" cy="6" r="3"/><circle cx="6" cy="18" r="3"/><path d="M18 9a9 9 0 0 1-9 9"/></g>
    <g id="sword"><polyline points="14.5 17.5 3 6 6 3 17.5 14.5"/><line x1="13" y1="19" x2="19" y2="13"/><line x1="16" y1="16" x2="20" y2="20"/><line x1="19" y1="21" x2="21" y2="19"/></g>
    <g id="bot"><rect x="3" y="11" width="18" height="10" rx="2"/><circle cx="12" cy="5" r="2"/><path d="M12 7v4"/><line x1="8" y1="16" x2="8.01" y2="16"/><line x1="16" y1="16" x2="16.01" y2="16"/></g>
    <g id="brain"><path d="M9 16a5 5 0 1 1 5-5v5h-5z"/><path d="M15 16a5 5 0 1 0-5-5v5h5z"/></g>
    <g id="cross"><line x1="18" y1="6" x2="6" y2="18"/><line x1="6" y1="6" x2="18" y2="18"/></g>
    <g id="ruler"><path d="M2 22L22 2"/><path d="M8 8l8 8"/><path d="M4 14l2 2"/><path d="M10 8l2 2"/><path d="M14 4l2 2"/></g>
    <g id="wand"><path d="M15 4V2M15 16v-2M8 9h2M20 9h2M17.8 11.8l1.4 1.4M17.8 6.2l1.4-1.4M12.2 11.8l-1.4 1.4M12.2 6.2l-1.4-1.4M2 22l10-10"/></g>
    <g id="clock"><circle cx="12" cy="13" r="8"/><line x1="12" y1="9" x2="12" y2="13"/><line x1="10" y1="2" x2="14" y2="2"/></g>
    <g id="wheel"><circle cx="12" cy="12" r="10"/><path d="M12 2v20M2 12h20M4.93 4.93l14.14 14.14M19.07 4.93L4.93 19.07"/></g>
    <g id="party"><path d="M14 3l-4 4 4 4-4 4 4 4"/><circle cx="5" cy="5" r="2"/><circle cx="19" cy="19" r="2"/><circle cx="19" cy="5" r="2"/><circle cx="5" cy="19" r="2"/></g>
    <g id="box"><line x1="16.5" y1="9.4" x2="7.5" y2="4.21"/><path d="M21 16V8a2 2 0 0 0-1-1.73l-7-4a2 2 0 0 0-2 0l-7 4A2 2 0 0 0 3 8v8a2 2 0 0 0 1 1.73l7 4a2 2 0 0 0 2 0l7-4A2 2 0 0 0 21 16z"/><polyline points="3.27 6.96 12 12.01 20.73 6.96"/><line x1="12" y1="22.08" x2="12" y2="12"/></g>
    <g id="search"><circle cx="11" cy="11" r="8"/><line x1="21" y1="21" x2="16.65" y2="16.65"/></g>
  </defs>
</svg>

# <svg class="icon icon-h1"><use href="#detective"/></svg> DÍA 1: OPERACIÓN RESCATE DIGITAL
1. ## Herramientas Computacionales Fundamentales
### 1.1 Comandos básicos de Unix · 1.2 Manejo de Terminal · 1.3 Compilación en línea

- **<svg class="icon"><use href="#ban"/></svg> Cero Exámenes de Memoria:** Aquí resolvemos misiones prácticas en equipo.
- **<svg class="icon"><use href="#globe"/></svg> Todas las Carreras:** Negocios, Derecho, Diseño, Arquitectura e Ingeniería.
- **<svg class="icon"><use href="#bolt"/></svg> Superpoder Real:** Haz en 3 segundos lo que con el mouse toma 2 horas.

> **Tu meta de hoy:** Infiltrarte en un servidor saboteado usando únicamente la Terminal Unix, rescatar las 3 pistas ocultas y compilar tu primer sistema en la nube.

---

## <svg class="icon icon-h2"><use href="#question"/></svg> ¿Por qué usar la "Pantalla Negra" (CLI) y no el Mouse (GUI)?

| Tarea en la vida real | <svg class="icon"><use href="#mouse"/></svg> Con Mouse (Interfaz Gráfica) | <svg class="icon"><use href="#keyboard"/></svg> Con Terminal Unix (CLI) |
| :--- | :--- | :--- |
| **Crear 50 carpetas de clientes** | 15 minutos dando *Clic derecho > Nueva carpeta* | `mkdir Cliente_{01..50}` (**0.1 segundos**) |
| **Buscar una cláusula en 200 contratos** | Abrir 200 archivos uno por uno | `grep -rn "Cláusula" .` (**0.2 segundos**) |
| **Encontrar un archivo perdido** | Buscar manualmente en decenas de subcarpetas | `find . -name "archivo.key"` (**Instantáneo**) |
| **Repetir el proceso mañana** | Volver a hacerlo todo a mano | Guardar los comandos en un script automático |

---

## <svg class="icon icon-h2"><use href="#tree"/></svg> 1.1 ¿Cómo organiza Unix los archivos? (El Árbol Invertido)

Todo nace en el directorio raíz (`/`) y las carpetas ocultas empiezan con un **punto (`.`)**:

    / (Raíz del Sistema Linux / Unix)
    ├── home/
    ├── dev/
    │   └── ttyACM0          <-- Puerto USB donde se conecta un Arduino físico
    └── workspaces/
        └── Mision_Rescate/
            ├── Finanzas/
            ├── Servidores_Logs/
            └── Ingenieria/
                └── Telemetria_Cohete/
                    └── .boveda_secreta/   <-- ¡Empieza con "." = OCULTA!

---

## <svg class="icon icon-h2"><use href="#compass"/></svg> 1.1 El Kit de Navegación del Detective Digital

| Comando | Significado | Ejemplo en Terminal | ¿Qué hace exactamente? |
| :--- | :--- | :--- | :--- |
| **`pwd`** | *Print Working Directory* | `pwd` | Te dice en qué carpeta estás parado ahora mismo. |
| **`ls -la`** | *List All* | `ls -la` | Muestra todos los archivos, **incluidos los ocultos con punto (`.`)**. |
| **`cd`** | *Change Directory* | `cd Ingenieria` / `cd ..` | Entra a una carpeta o regresa un nivel atrás (`..`). |
| **`cat`** | *Concatenate* | `cat LEEME_URGENTE.txt` | Imprime el contenido de un archivo de texto en pantalla. |
| **`mkdir`** | *Make Directory* | `mkdir Evidencia_Lunes` | Crea una carpeta nueva sin tocar el mouse. |
| **`cp` / `mv`** | *Copy / Move* | `cp pista.txt copia.txt` | Copia o mueve/renombra archivos entre carpetas. |

---

## <svg class="icon icon-h2"><use href="#bolt"/></svg> 1.2 Manejo de Terminal: Radares de Búsqueda y Redirección

    # 1. GREP: Busca una palabra EXACTA adentro de cientos de archivos al mismo tiempo
    grep -rn "SABOTAJE" Servidores_Logs/Marzo/

    # 2. FIND: Encuentra en qué subcarpeta está escondido un archivo por su nombre
    find . -name "llave_maestra.key"

    # 3. REDIRECCIÓN (> y >>): Guarda la salida en un archivo de texto
    echo "KRAKEN-APOLO-2026" > Evidencia_Lunes/clave_encontrada.txt
    history > bitacora_lunes.txt

> **Diferencia clave:** Un solo signo `>` crea o sobrescribe el archivo desde cero. Doble signo `>>` agrega renglones al final sin borrar lo que ya tenías.

---

## <svg class="icon icon-h2"><use href="#gear"/></svg> 1.3 Compilación en Línea: Del Idioma Humano al Chip

El procesador de una computadora o de un cohete **no entiende C ni Python directamente**, solo entiende instrucciones binarias. **Compilar** es traducir y validar tu código:

    [ 1. CÓDIGO FUENTE ]         [ 2. COMPILADOR ]            [ 3. EJECUTABLE / HARDWARE ]
     codigo_cohete_roto.c  ───►   gcc / Wokwi Cloud     ───►   ./despegue
     sketch.ino (Humano)          Revisa sintaxis (;)          Enciende LEDs y Servomotor

    # Comando para compilar y ejecutar en tu terminal de Codespaces:
    gcc codigo_cohete_roto.c -o despegue
    ./despegue

---

## <svg class="icon icon-h2"><use href="#alert"/></svg> RETO DEL DÍA 1 (15% en Canvas): Escape Room Forense

1. **Infiltración:** Abre tu terminal en GitHub Codespaces, ejecuta `bash generador_escape_room.sh` y entra a la carpeta `Mision_Rescate`.
2. **Caza de las 3 Pistas:**
   * **Pista 1:** Usa `ls -la` y `cat` para descubrir la carpeta oculta dentro de `Ingenieria`.
   * **Pista 2:** Usa `grep` para localizar la palabra `"SABOTAJE"` entre los 40 logs de `Marzo`.
   * **Pista 3:** Usa `find` para desenterrar el archivo `llave_maestra.key`.
3. **Compilación (Tema 1.3):** Corrige los 2 errores de sintaxis en `codigo_cohete_roto.c`, escribe tu nombre y compílalo con `gcc`.
4. **Entrega en Canvas:** Ejecuta `history > bitacora_lunes.txt` y sube tu `.txt` junto con tu captura de pantalla compilada.

---

# <svg class="icon icon-h1"><use href="#bolt"/></svg> DÍA 2: EL TABLERO DE MANDO
## 2. Programación con Shell (Bash)
### 2.1 Variables, arreglos y listas · 2.2 Argumentos y operadores · 2.3 Condicionales

> *"Si tienes que hacer una tarea más de dos veces en tu carrera, escribe un script en Shell que la haga por ti en medio segundo."*

- **Objetivo de hoy:** Construir el script `control_mision.sh` capaz de recibir parámetros de vuelo o negocio, calcular riesgos y enviar órdenes al hardware en **Wokwi**.

---

## <svg class="icon icon-h2"><use href="#doc"/></svg> Anatomía de un Script en Bash (`.sh`)

Un script es un archivo de texto que automatiza comandos y toma decisiones lógicas:

    #!/bin/bash
    # ↑ 1. El "Shebang": indica al sistema que este archivo se ejecuta con Bash

    echo "Iniciando sistema de automatización..."

    # Para darle permisos de ejecución en Unix (solo se hace 1 vez):
    # chmod +x control_mision.sh
    #
    # Para ejecutarlo en la terminal:
    # ./control_mision.sh

---

## <svg class="icon icon-h2"><use href="#box"/></svg> 2.1 Definición de Variables, Arreglos y Listas

> **<svg class="icon"><use href="#warning"/></svg> Regla de Oro #1 en Bash:** ¡Jamás pongas espacios en blanco alrededor del signo `=` al declarar una variable!

    # <svg class="icon"><use href="#check"/></svg> VARIABLES SIMPLES (Sin espacios alrededor del "=")
    NOMBRE_EQUIPO="Escuadrón Apolo-Toluca"
    COMBUSTIBLE_MINIMO=60
    PESO_COHETE_KG=12

    # <svg class="icon"><use href="#list"/></svg> ARREGLOS (Arrays: listas de múltiples elementos entre paréntesis)
    SUBSISTEMAS=("Sensores_Barometricos" "Servomotor_Principal" "Telemetria_WiFi" "Bateria_LiPo")

    # Recorrer toda la lista automáticamente con un ciclo for:
    for sistema in "${SUBSISTEMAS[@]}"; do
        echo "   [OK] Subsistema verificado: $sistema"
    done

---

## <svg class="icon icon-h2"><use href="#target"/></svg> 2.2 Argumentos en Línea de Comandos (`$1`, `$2`, `$3`)

Los argumentos permiten pasarle datos distintos a tu programa **desde afuera** cada vez que lo corres, sin tener que editar el código:

    $ ./control_mision.sh     DESPEGUE      90      /dev/ttyACM0
      └────────┬────────┘     └───┬──┘     └─┬┘     └─────┬────┘
               $0                 $1         $2           $3
        (Nombre script)        (Arg 1)    (Arg 2)      (Arg 3)

    # Así los recibes adentro de tu script:
    ACCION=$1          # Captura la palabra "DESPEGUE"
    COMBUSTIBLE=$2     # Captura el número 90
    PUERTO_USB=$3      # Captura el puerto opcional

---

## <svg class="icon icon-h2"><use href="#calc"/></svg> 2.2 Operadores Aritméticos y Lógicos en Bash

| Tipo de Operador | Sintaxis en Bash | Ejemplo Práctico | Significado |
| :--- | :--- | :--- | :--- |
| **Aritmético** | `$(( cálculo ))` | `ALT=$(( COMBUSTIBLE * 15 ))` | Suma `+`, Resta `-`, Mult `*`, Div `/` |
| **Igual / Diferente** | `==` o `-eq` / `-ne` | `[ "$ACCION" == "DESPEGUE" ]` | Compara textos o números iguales |
| **Mayor / Mayor o igual** | `-gt` / `-ge` | `[ "$COMBUSTIBLE" -ge 60 ]` | *Greater than* / *Greater or equal* |
| **Menor / Menor o igual** | `-lt` / `-le` | `[ "$COMBUSTIBLE" -lt 60 ]` | *Less than* / *Less or equal* |
| **AND / OR Lógico** | `&&` / `||` | `[ Cond1 ] && [ Cond2 ]` | Ambas deben cumplirse (`&&`) o una (`||`) |

---

## <svg class="icon icon-h2"><use href="#traffic"/></svg> 2.3 Condicionales (`if / elif / else`)

> **<svg class="icon"><use href="#warning"/></svg> Regla de Oro #2 en Bash:** Siempre deja **un espacio en blanco** después de `[` y antes de `]`.

    if [ "$ACCION" == "DESPEGUE" ] && [ "$COMBUSTIBLE" -ge "$COMBUSTIBLE_MINIMO" ]; then
        echo "<svg class="icon"><use href="#rocket"/></svg> [AUTORIZADO] Condiciones óptimas. Enviando CMD_LAUNCH:180"
        CODIGO_HARDWARE="CMD_LAUNCH:180"

    elif [ "$ACCION" == "DESPEGUE" ] && [ "$COMBUSTIBLE" -lt "$COMBUSTIBLE_MINIMO" ]; then
        echo "<svg class="icon"><use href="#warning"/></svg> [PELIGRO] Combustible insuficiente ($COMBUSTIBLE%). Bloqueando..."
        CODIGO_HARDWARE="CMD_ABORT:0"

    elif [ "$ACCION" == "PARACAIDAS" ] || [ "$ACCION" == "ARAÑA" ]; then
        echo "<svg class="icon"><use href="#para"/></svg> [ACCIÓN] Activando servomotor mecánico: CMD_SERVO_ACTION:90"
        CODIGO_HARDWARE="CMD_SERVO_ACTION:90"

    else
        echo "<svg class="icon"><use href="#alert"/></svg> [ERROR] Comando no válido. Abortando misión."
        CODIGO_HARDWARE="CMD_ABORT:0"
    fi

---

## <svg class="icon icon-h2"><use href="#trophy"/></svg> RETO DEL DÍA 2 (15% en Canvas): Script `control_mision.sh`

1. **En equipo (3 a 4 integrantes):** Construyan y comenten su archivo `control_mision.sh`.
2. **Checklist técnico obligatorio:**
   * Al menos **3 variables** y **1 arreglo** recorrido en consola (Tema 2.1).
   * Recepción de **2 argumentos** (`$1`, `$2`) y **1 operación aritmética** con `$(( ))` (Tema 2.2).
   * Bloque **`if / elif / else`** con operadores lógicos (`&&`, `||`, `-ge`, `-lt`) (Tema 2.3).
3. **Conexión con Wokwi:** Prueben la orden generada (`CMD_LAUNCH:180`, `CMD_SERVO_ACTION:90`, `CMD_ABORT:0`) en el Monitor Serial de su circuito en **Wokwi.com**.
4. **Entrega en Canvas:** Suban su archivo `.sh` y una captura mostrando **3 corridas distintas** en la terminal.

---

# <svg class="icon icon-h1"><use href="#galaxy"/></svg> DÍA 3: LA MÁQUINA DEL TIEMPO Y EL MULTIVERSO
## 3. Manejo de Versiones con Git y GitHub
### 3.1 Introducción · 3.2 Comandos básicos · 3.3 Branches (Ramas)

- **El problema real en cualquier carrera:**  
  `Entrega_Final.docx` → `Entrega_Final_v2.docx` → `Entrega_ESTE_SI_BUENO_3AM.docx`
- **La solución profesional (Git):**  
  Una máquina del tiempo donde todo el equipo trabaja en paralelo sin pisarse los cambios y con historial auditable línea por línea.

---

## <svg class="icon icon-h2"><use href="#cycle"/></svg> 3.1 Las 4 Zonas de Git: ¿Cómo viaja tu código?

    ┌─────────────────┐   git add .   ┌─────────────────┐  git commit   ┌─────────────────┐   git push    ┌─────────────────┐
    │ 1. DIRECTORIO   │ ────────────► │ 2. STAGING AREA │ ────────────► │ 3. REPO LOCAL   │ ────────────► │ 4. GITHUB NUBE  │
    │ DE TRABAJO      │               │ (Caja de envío) │               │ (Foto en tiempo)│               │ (Todo el equipo)│
    └─────────────────┘               └─────────────────┘               └─────────────────┘               └─────────────────┘
             ▲                                                                                                     │
             └──────────────────────────────────────────── git pull ───────────────────────────────────────────────┘

- **Commit:** Es una "fotografía permanente" del estado de tu proyecto en un minuto exacto, con autor, fecha y mensaje de qué cambiaste.

---

## <svg class="icon icon-h2"><use href="#keyboard"/></svg> 3.2 Los 6 Comandos de Git que usarás toda la semana

| Comando en Terminal | ¿Qué hace? | Momento en que se usa |
| :--- | :--- | :--- |
| **`git clone <URL>`** | Descarga el repositorio compartido de GitHub a tu terminal. | Al iniciar el proyecto con tu equipo. |
| **`git status`** | Muestra qué archivos modificaste y en qué rama estás parado. | Todo el tiempo (tu brújula de seguridad). |
| **`git add .`** | Prepara todos tus archivos modificados para la fotografía. | Al terminar un cambio o mejora. |
| **`git commit -m "Msg"`** | Guarda la fotografía oficial en el historial con un mensaje claro. | Justo después de `git add .`. |
| **`git push`** | Sube tus commits a GitHub para que tu equipo los reciba. | Al compartir tu trabajo en la nube. |
| **`git pull`** | Descarga e integra los cambios recientes de tus compañeros. | Antes de empezar a editar archivos. |

---

## <svg class="icon icon-h2"><use href="#branch"/></svg> 3.3 Branches (Ramas): Trabajando en Universos Paralelos

En equipos profesionales **nadie edita directamente la rama `main`**. Cada integrante crea su propia rama para desarrollar su parte sin romper el proyecto principal:

    rama-hardware (Arduino/Wokwi)     o───────o──────┐
                                     /                \ (git merge)
    main (Versión Oficial Estable)  o──────────────────o───────────o───► <svg class="icon"><use href="#rocket"/></svg> Demo Day!
                                     \                            /
    rama-automatizacion (Bash .sh)    o─────────o─────────o──────┘

    # 1. Crear tu rama y saltar a ella en un solo paso:
    git checkout -b rama-automatizacion

    # 2. Volver a main y fusionar tu rama cuando ya funciona:
    git checkout main
    git merge rama-automatizacion

---

## <svg class="icon icon-h2"><use href="#sword"/></svg> 3.3 ¿Cómo sobrevivir a un Conflicto de Fusión (*Merge Conflict*)?

Cuando dos personas modifican **exactamente el mismo renglón** en ramas distintas y las fusionan, Git detiene el proceso y muestra estas marcas para que el equipo decida:

    <<<<<<< HEAD (Lo que estaba en la rama donde estás parado)
    ESTADO="En espera de pruebas de laboratorio"
    =======
    ESTADO="Listo para lanzamiento en Campus Toluca"
    >>>>>>> rama-hardware (Lo que viene de la rama que intentas unir)

**Pasos para resolverlo en 30 segundos:**
1. Abre el archivo, **borra las 3 líneas de símbolos** (`<<<<<<<`, `=======`, `>>>>>>>`) y deja el texto final acordado por el equipo.
2. Guarda el archivo y confirma en terminal: `git add .` → `git commit -m "Resuelve conflicto"` → `git push`.

---

## <svg class="icon icon-h2"><use href="#trophy"/></svg> RETO DEL DÍA 3 (15% en Canvas): Multiverso y Sabotaje Controlado

1. **Repositorio del Equipo:** Creen el repositorio oficial en GitHub y completen la portada `README.md` con la tabla de roles.
2. **Trabajo en Ramas (Tema 3.3):** Cada integrante debe crear su propia rama (`rama-hardware`, `rama-automatizacion`, `rama-documentacion`), hacer al menos **2 commits desde la terminal** y fusionarla (`merge`) hacia `main`.
3. **Sabotaje Controlado:** Dos compañeros editarán a propósito la misma línea del `README.md` para provocar un **Merge Conflict**, resolverlo y documentar la experiencia en el mismo `README.md`.
4. **Entrega en Canvas:** Pegar únicamente el enlace (URL) del repositorio de GitHub del equipo.

---

# <svg class="icon icon-h1"><use href="#bot"/></svg> DÍA 4: DE CERO A CREADOR CON IA GENERATIVA
## 4. Generación de Código con Inteligencia Artificial
### 4.1 Introducción · 4.2 IA Generativa de código · 4.3 Análisis, diseño y generación con IA

> *"El nuevo lenguaje de programación más poderoso del mundo es el español bien estructurado. La IA escribe la sintaxis; tú pones la arquitectura y el criterio crítico."*

---

## <svg class="icon icon-h2"><use href="#brain"/></svg> 4.1 y 4.2 ¿Por qué falla el "Copy-Paste" a ciegas con la IA?

| Enfoque | <svg class="icon"><use href="#cross"/></svg> El Novato ("Hazme todo") | <svg class="icon"><use href="#check"/></svg> El Arquitecto (Método de 3 Fases) |
| :--- | :--- | :--- |
| **Cómo le pide a la IA** | *"Hazme un código de Arduino para un cohete"* | Divide el proceso en **1) Análisis, 2) Diseño y 3) Generación modular** |
| **Qué entrega la IA** | Código genérico con pines inventados que no conecta con tu script de Bash | Código exacto para tus pines de Wokwi que lee los comandos de tu `control_mision.sh` |
| **Qué pasa si algo falla** | Nadie en el equipo entiende el código ni sabe qué línea corregir | El equipo audita el código, detecta alucinaciones y sabe explicarlo en vivo |

---

## <svg class="icon icon-h2"><use href="#ruler"/></svg> 4.3 Metodología en 3 Fases: Analizar → Diseñar → Generar

    ┌────────────────────────────┐      ┌────────────────────────────┐      ┌────────────────────────────┐
    │      FASE 1: ANÁLISIS      │      │       FASE 2: DISEÑO       │      │     FASE 3: GENERACIÓN     │
    │ • Prohibido pedir código   │ ───► │ • Tabla de Pines (Pinout)  │ ───► │ • Script Bash (.sh)        │
    │ • Definir 3 Entradas       │      │ • Diagrama de flujo        │      │ • Código Arduino (sketch)  │
    │ • Definir 3 Reglas Lógicas │      │   Terminal ➔ Hardware      │      │ • Circuito diagram.json    │
    │ • Definir 3 Salidas físicas│      │ • Estructura de archivos   │      │ • Auditoría Humana         │
    └────────────────────────────┘      └────────────────────────────┘      └────────────────────────────┘

---

## <svg class="icon icon-h2"><use href="#wand"/></svg> Cómo pedirle a la IA el Circuito Completo para Wokwi

Además del código en C++ o MicroPython, puedes pedirle a la IA que genere el archivo **`diagram.json`** para que Wokwi dibuje y conecte todos los cables automáticamente:

    PROMPT DE FASE 3 PARA TU EQUIPO:
    "Actúa como ingeniero de sistemas embebidos. Con base en nuestra tabla de pines del Diseño:
    1. Genera el código para Arduino Uno (sketch.ino) comentado línea por línea que lea por el
       Puerto Serial las órdenes de nuestro script de Bash (CMD_LAUNCH:180, CMD_SERVO_ACTION:90,
       CMD_ABORT:0) y controle el Servomotor en el Pin 9, LED Verde en Pin 12 y LED Rojo en Pin 13.
    2. Genera el código JSON completo para el archivo 'diagram.json' de Wokwi.com con esos
       componentes ya posicionados y cableados."

---

## <svg class="icon icon-h2"><use href="#search"/></svg> La "Auditoría Humana" (Requisito Clave de Evaluación)

Toda IA Generativa comete errores o "alucinaciones". Para obtener el 100% en el entregable de hoy, tu equipo debe documentar en `DISENO_IA.md` **qué error detectaron y corrigieron**:

- **Caso típico 1 (En Bash):** La IA olvida poner espacios dentro de `[ "$A" == "$B" ]` o usa operadores de Python dentro de un script `.sh`.
- **Caso típico 2 (En la conexión):** El script de Bash imprime `"DESPEGAR"`, pero el código de Arduino que dio la IA espera leer `"CMD_LAUNCH"`.
- **Caso típico 3 (En Wokwi):** La IA conecta un LED sin conectar el cable negro de tierra (`GND`) en el archivo `diagram.json`.

---

## <svg class="icon icon-h2"><use href="#trophy"/></svg> RETO DEL DÍA 4 (15% en Canvas): Archivo `DISENO_IA.md`

1. Creen en su repositorio de GitHub el archivo **`DISENO_IA.md`**.
2. Documenten sus **3 Fases** (Prompts utilizados + Resultados de Análisis, Tabla de Pines/Diagrama de Diseño y Enlaces al código generado).
3. Completen la sección **"Auditoría Humana"** explicando con sus propias palabras cómo funciona su código y qué error o mejora corrigieron respecto a la primera versión que les dio la IA.
4. Suban el enlace directo a su archivo `DISENO_IA.md` en Canvas.

---

# <svg class="icon icon-h1"><use href="#trophy"/></svg> DÍA 5 (VIERNES): DEMO DAY & FERIA DE SUPERPODERES
## Evidencia Integradora Final (40% de la Calificación)
### Integración Total: Terminal Unix + Script Bash + Git + IA + Hardware/Wokwi

- **<svg class="icon"><use href="#clock"/></svg> Tiempo por equipo:** **5 minutos exactos** (3 min de demostración en vivo + 2 min de Ruleta de Preguntas).
- **<svg class="icon"><use href="#ban"/></svg> Regla de Oro "Cero Mouse":** Para iniciar su presentación, el equipo debe abrir la **Terminal**, hacer `git pull` de su repositorio y lanzar todo con `./control_mision.sh`.

---

## <svg class="icon icon-h2"><use href="#clock"/></svg> Estructura de tus 5 Minutos en el Escenario

| Minuto | Qué sucede en el frente | Qué se evalúa en la Rúbrica Final |
| :--- | :--- | :--- |
| **Min 0:00 - 1:00** | **El Pitch del Problema:** ¿Qué construyeron y por qué importa para su área o misión? | Creatividad y aplicación multidisciplinaria (**20 pts**). |
| **Min 1:00 - 3:00** | **Ejecución en Vivo desde Terminal:** `git pull` → `./control_mision.sh` con 2 argumentos distintos → Reacción en Wokwi o Arduino físico. | Integración de las 4 herramientas (**30 pts**) y calidad técnica del repositorio (**25 pts**). |
| **Min 3:00 - 5:00** | **La Ruleta de Comandos:** El profesor elige al azar a un integrante para responder o ejecutar un comando en vivo. | Defensa individual y dominio real del proyecto (**25 pts**). |

---

## <svg class="icon icon-h2"><use href="#wheel"/></svg> La Ruleta de Comandos (Banco de Retos en Vivo del Viernes)

Prepárate con tu equipo, porque a cualquiera le puede tocar una de estas acciones rápidas de 30 segundos frente al proyector:

1. **Reto Terminal (Tema 1):** *"Desde la terminal, muéstranos todos los archivos ocultos de tu repositorio o busca en qué línea de tu script aparece la palabra `if` usando `grep`."*
2. **Reto Bash en Vivo (Tema 2):** *"Ejecuta tu `./control_mision.sh` pasándole un valor de energía bajo para demostrar cómo tu condicional bloquea la misión automáticamente."*
3. **Reto Multiverso Git (Tema 3):** *"Escribe en la terminal el comando para ver todas las ramas (`branches`) o los últimos 3 commits de tu equipo y explícanos cómo resolvieron su conflicto del miércoles."*
4. **Reto Auditoría IA (Tema 4):** *"Señala en pantalla qué línea del código de Arduino/Wokwi recibe la orden del script de Bash y qué error tuvieron que corregirle a la IA el jueves."*

---

## <svg class="icon icon-h2"><use href="#party"/></svg> ¡Misión Cumplida, Escuadrón!

En solo 5 días pasaste de ver una pantalla negra intimidante a:
- Navegar y filtrar sistemas **Unix/Linux** a velocidad profesional.
- Automatizar decisiones con **Scripts de Bash (`.sh`)**.
- Colaborar en equipo usando **Git, GitHub y Ramas** como en la industria tecnológica.
- Dirigir a la **Inteligencia Artificial** con metodología de ingeniería (**Análisis → Diseño → Código**) para controlar hardware físico y simulado.

> **¡Mucho éxito en su Demo Day! <svg class="icon"><use href="#rocket"/></svg>**  
> *Prof. Alison Muñoz Capote — Tecnológico de Monterrey, Campus Toluca*