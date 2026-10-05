---
marp: true
theme: default
paginate: true
size: 16:9
header: '🚀 **SEMANA TEC: EL ARTE DE LA PROGRAMACIÓN** | Campus Toluca'
footer: '👨‍🏾‍🏫 Prof. Alison Muñoz Capote · Tecnológico de Monterrey'
style: |
  section {
    background: linear-gradient(135deg, #070b14 0%, #0f172a 60%, #070b14 100%);
    color: #f8fafc;
    font-family: 'Segoe UI', Roboto, Helvetica, sans-serif;
    padding: 44px 56px;
  }
  h1 { color: #00ff88; font-size: 2.0em; margin-bottom: 0.2em; }
  h2 { color: #38bdf8; font-size: 1.45em; border-bottom: 2px solid rgba(56,189,248,0.35); padding-bottom: 6px; }
  h3 { color: #fbbf24; font-size: 1.15em; }
  strong { color: #00ff88; }
  code { background: #1e293b; color: #38bdf8; padding: 2px 8px; border-radius: 6px; font-family: 'Courier New', monospace; }
  pre { background: #05070d !important; border: 1px solid #334155; border-left: 5px solid #00ff88; border-radius: 12px; padding: 14px !important; font-size: 0.78em; }
  pre code { background: transparent; color: #e2e8f0; }
  table { width: 100%; border-collapse: collapse; font-size: 0.78em; margin-top: 8px; }
  th { background: #1e3a8a; color: #93c5fd; padding: 8px 10px; text-align: left; }
  td { background: rgba(30,41,59,0.75); padding: 7px 10px; border-bottom: 1px solid #334155; color: #e2e8f0; }
  blockquote { background: rgba(6, 78, 59, 0.35); border-left: 5px solid #00ff88; padding: 10px 18px; border-radius: 8px; color: #e2e8f0; font-size: 0.9em; }
---

# 🕵️‍♂️ DÍA 1: OPERACIÓN RESCATE DIGITAL
## 1. Herramientas Computacionales Fundamentales
### 1.1 Comandos básicos de Unix · 1.2 Manejo de Terminal · 1.3 Compilación en línea

* **🚫 Cero Exámenes de Memoria:** Aquí resolvemos misiones prácticas en equipo.
* **🌍 Todas las Carreras:** Negocios, Derecho, Diseño, Arquitectura e Ingeniería.
* **⚡ Superpoder Real:** Haz en 3 segundos lo que con el mouse toma 2 horas.

> **Tu meta de hoy:** Infiltrarte en un servidor saboteado usando únicamente la Terminal Unix, rescatar las 3 pistas ocultas y compilar tu primer sistema en la nube.

---

## 🤔 ¿Por qué usar la "Pantalla Negra" (CLI) y no el Mouse (GUI)?

| Tarea en la vida real | 🖱️ Con Mouse (Interfaz Gráfica) | ⌨️ Con Terminal Unix (CLI) |
| :--- | :--- | :--- |
| **Crear 50 carpetas de clientes** | 15 minutos dando *Clic derecho > Nueva carpeta* | `mkdir Cliente_{01..50}` (**0.1 segundos**) |
| **Buscar una cláusula en 200 contratos** | Abrir 200 archivos uno por uno | `grep -rn "Cláusula" .` (**0.2 segundos**) |
| **Encontrar un archivo perdido** | Buscar manualmente en decenas de subcarpetas | `find . -name "archivo.key"` (**Instantáneo**) |
| **Repetir el proceso mañana** | Volver a hacerlo todo a mano | Guardar los comandos en un script automático |

---

## 🌳 1.1 ¿Cómo organiza Unix los archivos? (El Árbol Invertido)

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

## 🧭 1.1 El Kit de Navegación del Detective Digital

| Comando | Significado | Ejemplo en Terminal | ¿Qué hace exactamente? |
| :--- | :--- | :--- | :--- |
| **`pwd`** | *Print Working Directory* | `pwd` | Te dice en qué carpeta estás parado ahora mismo. |
| **`ls -la`** | *List All* | `ls -la` | Muestra todos los archivos, **incluidos los ocultos con punto (`.`)**. |
| **`cd`** | *Change Directory* | `cd Ingenieria` / `cd ..` | Entra a una carpeta o regresa un nivel atrás (`..`). |
| **`cat`** | *Concatenate* | `cat LEEME_URGENTE.txt` | Imprime el contenido de un archivo de texto en pantalla. |
| **`mkdir`** | *Make Directory* | `mkdir Evidencia_Lunes` | Crea una carpeta nueva sin tocar el mouse. |
| **`cp` / `mv`** | *Copy / Move* | `cp pista.txt copia.txt` | Copia o mueve/renombra archivos entre carpetas. |

---

## ⚡ 1.2 Manejo de Terminal: Radares de Búsqueda y Redirección

    # 1. GREP: Busca una palabra EXACTA adentro de cientos de archivos al mismo tiempo
    grep -rn "SABOTAJE" Servidores_Logs/Marzo/

    # 2. FIND: Encuentra en qué subcarpeta está escondido un archivo por su nombre
    find . -name "llave_maestra.key"

    # 3. REDIRECCIÓN (> y >>): Guarda la salida en un archivo de texto
    echo "KRAKEN-APOLO-2026" > Evidencia_Lunes/clave_encontrada.txt
    history > bitacora_lunes.txt

> **Diferencia clave:** Un solo signo `>` crea o sobrescribe el archivo desde cero. Doble signo `>>` agrega renglones al final sin borrar lo que ya tenías.

---

## ⚙ 1.3 Compilación en Línea: Del Idioma Humano al Chip

El procesador de una computadora o de un cohete **no entiende C ni Python directamente**, solo entiende instrucciones binarias. **Compilar** es traducir y validar tu código:

    [ 1. CÓDIGO FUENTE ]         [ 2. COMPILADOR ]            [ 3. EJECUTABLE / HARDWARE ]
     codigo_cohete_roto.c  ───►   gcc / Wokwi Cloud     ───►   ./despegue
     sketch.ino (Humano)          Revisa sintaxis (;)          Enciende LEDs y Servomotor

    # Comando para compilar y ejecutar en tu terminal de Codespaces:
    gcc codigo_cohete_roto.c -o despegue
    ./despegue

---

## 🚨 RETO DEL DÍA 1 (15% en Canvas): Escape Room Forense

1. **Infiltración:** Abre tu terminal en GitHub Codespaces, ejecuta `bash generador_escape_room.sh` y entra a la carpeta `Mision_Rescate`.
2. **Caza de las 3 Pistas:**
   * **Pista 1:** Usa `ls -la` y `cat` para descubrir la carpeta oculta dentro de `Ingenieria`.
   * **Pista 2:** Usa `grep` para localizar la palabra `"SABOTAJE"` entre los 40 logs de `Marzo`.
   * **Pista 3:** Usa `find` para desenterrar el archivo `llave_maestra.key`.
3. **Compilación (Tema 1.3):** Corrige los 2 errores de sintaxis en `codigo_cohete_roto.c`, escribe tu nombre y compílalo con `gcc`.
4. **Entrega en Canvas:** Ejecuta `history > bitacora_lunes.txt` y sube tu `.txt` junto con tu captura de pantalla compilada.

---

# ⚡ DÍA 2: EL TABLERO DE MANDO
## 2. Programación con Shell (Bash)
### 2.1 Variables, arreglos y listas · 2.2 Argumentos y operadores · 2.3 Condicionales

> *"Si tienes que hacer una tarea más de dos veces en tu carrera, escribe un script en Shell que la haga por ti en medio segundo."*

* **Objetivo de hoy:** Construir el script `control_mision.sh` capaz de recibir parámetros de vuelo o negocio, calcular riesgos y enviar órdenes al hardware en **Wokwi**.

---

## 📜 Anatomía de un Script en Bash (`.sh`)

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

## 📦 2.1 Definición de Variables, Arreglos y Listas

> **⚠️ Regla de Oro #1 en Bash:** ¡Jamás pongas espacios en blanco alrededor del signo `=` al declarar una variable!

    # ✅ VARIABLES SIMPLES (Sin espacios alrededor del "=")
    NOMBRE_EQUIPO="Escuadrón Apolo-Toluca"
    COMBUSTIBLE_MINIMO=60
    PESO_COHETE_KG=12

    # 📋 ARREGLOS (Arrays: listas de múltiples elementos entre paréntesis)
    SUBSISTEMAS=("Sensores_Barometricos" "Servomotor_Principal" "Telemetria_WiFi" "Bateria_LiPo")

    # Recorrer toda la lista automáticamente con un ciclo for:
    for sistema in "${SUBSISTEMAS[@]}"; do
        echo "   [OK] Subsistema verificado: $sistema"
    done

---

## 🎯 2.2 Argumentos en Línea de Comandos (`$1`, `$2`, `$3`)

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

## 🧮 2.2 Operadores Aritméticos y Lógicos en Bash

| Tipo de Operador | Sintaxis en Bash | Ejemplo Práctico | Significado |
| :--- | :--- | :--- | :--- |
| **Aritmético** | `$(( cálculo ))` | `ALT=$(( COMBUSTIBLE * 15 ))` | Suma `+`, Resta `-`, Mult `*`, Div `/` |
| **Igual / Diferente** | `==` o `-eq` / `-ne` | `[ "$ACCION" == "DESPEGUE" ]` | Compara textos o números iguales |
| **Mayor / Mayor o igual** | `-gt` / `-ge` | `[ "$COMBUSTIBLE" -ge 60 ]` | *Greater than* / *Greater or equal* |
| **Menor / Menor o igual** | `-lt` / `-le` | `[ "$COMBUSTIBLE" -lt 60 ]` | *Less than* / *Less or equal* |
| **AND / OR Lógico** | `&&` / `\|\|` | `[ Cond1 ] && [ Cond2 ]` | Ambas deben cumplirse (`&&`) o una (`\|\|`) |

---

## 🚦 2.3 Condicionales (`if / elif / else`)

> **⚠️ Regla de Oro #2 en Bash:** Siempre deja **un espacio en blanco** después de `[` y antes de `]`.

    if [ "$ACCION" == "DESPEGUE" ] && [ "$COMBUSTIBLE" -ge "$COMBUSTIBLE_MINIMO" ]; then
        echo "🚀 [AUTORIZADO] Condiciones óptimas. Enviando CMD_LAUNCH:180"
        CODIGO_HARDWARE="CMD_LAUNCH:180"

    elif [ "$ACCION" == "DESPEGUE" ] && [ "$COMBUSTIBLE" -lt "$COMBUSTIBLE_MINIMO" ]; then
        echo "⚠️ [PELIGRO] Combustible insuficiente ($COMBUSTIBLE%). Bloqueando..."
        CODIGO_HARDWARE="CMD_ABORT:0"

    elif [ "$ACCION" == "PARACAIDAS" ] \vert{}\vert{} [ "$ACCION" == "ARAÑA" ]; then
        echo "🪂 [ACCIÓN] Activando servomotor mecánico: CMD_SERVO_ACTION:90"
        CODIGO_HARDWARE="CMD_SERVO_ACTION:90"

    else
        echo "🚨 [ERROR] Comando no válido. Abortando misión."
        CODIGO_HARDWARE="CMD_ABORT:0"
    fi

---

## 🏆 RETO DEL DÍA 2 (15% en Canvas): Script `control_mision.sh`

1. **En equipo (3 a 4 integrantes):** Construyan y comenten su archivo `control_mision.sh`.
2. **Checklist técnico obligatorio:**
   * Al menos **3 variables** y **1 arreglo** recorrido en consola (Tema 2.1).
   * Recepción de **2 argumentos** (`$1`, `$2`) y **1 operación aritmética** con `$(( ))` (Tema 2.2).
   * Bloque **`if / elif / else`** con operadores lógicos (`&&`, `||`, `-ge`, `-lt`) (Tema 2.3).
3. **Conexión con Wokwi:** Prueben la orden generada (`CMD_LAUNCH:180`, `CMD_SERVO_ACTION:90`, `CMD_ABORT:0`) en el Monitor Serial de su circuito en **Wokwi.com**.
4. **Entrega en Canvas:** Suban su archivo `.sh` y una captura mostrando **3 corridas distintas** en la terminal.

---

# 🌌 DÍA 3: LA MÁQUINA DEL TIEMPO Y EL MULTIVERSO
## 3. Manejo de Versiones con Git y GitHub
### 3.1 Introducción · 3.2 Comandos básicos · 3.3 Branches (Ramas)

* **El problema real en cualquier carrera:**  
  `Entrega_Final.docx` → `Entrega_Final_v2.docx` → `Entrega_ESTE_SI_BUENO_3AM.docx`
* **La solución profesional (Git):**  
  Una máquina del tiempo donde todo el equipo trabaja en paralelo sin pisarse los cambios y con historial auditable línea por línea.

---

## 🔄 3.1 Las 4 Zonas de Git: ¿Cómo viaja tu código?

    ┌─────────────────┐   git add .   ┌─────────────────┐  git commit   ┌─────────────────┐   git push    ┌─────────────────┐
    │ 1. DIRECTORIO   │ ────────────► │ 2. STAGING AREA │ ────────────► │ 3. REPO LOCAL   │ ────────────► │ 4. GITHUB NUBE  │
    │ DE TRABAJO      │               │ (Caja de envío) │               │ (Foto en tiempo)│               │ (Todo el equipo)│
    └─────────────────┘               └─────────────────┘               └─────────────────┘               └─────────────────┘
             ▲                                                                                                     │
             └──────────────────────────────────────────── git pull ───────────────────────────────────────────────┘

* **Commit:** Es una "fotografía permanente" del estado de tu proyecto en un minuto exacto, con autor, fecha y mensaje de qué cambiaste.

---

## ⌨️ 3.2 Los 6 Comandos de Git que usarás toda la semana

| Comando en Terminal | ¿Qué hace? | Momento en que se usa |
| :--- | :--- | :--- |
| **`git clone <URL>`** | Descarga el repositorio compartido de GitHub a tu terminal. | Al iniciar el proyecto con tu equipo. |
| **`git status`** | Muestra qué archivos modificaste y en qué rama estás parado. | Todo el tiempo (tu brújula de seguridad). |
| **`git add .`** | Prepara todos tus archivos modificados para la fotografía. | Al terminar un cambio o mejora. |
| **`git commit -m "Msg"`** | Guarda la fotografía oficial en el historial con un mensaje claro. | Justo después de `git add .`. |
| **`git push`** | Sube tus commits a GitHub para que tu equipo los reciba. | Al compartir tu trabajo en la nube. |
| **`git pull`** | Descarga e integra los cambios recientes de tus compañeros. | Antes de empezar a editar archivos. |

---

## 🌿 3.3 Branches (Ramas): Trabajando en Universos Paralelos

En equipos profesionales **nadie edita directamente la rama `main`**. Cada integrante crea su propia rama para desarrollar su parte sin romper el proyecto principal:

    rama-hardware (Arduino/Wokwi)     o───────o──────┐
                                     /                \ (git merge)
    main (Versión Oficial Estable)  o──────────────────o───────────o───► 🚀 Demo Day!
                                     \                            /
    rama-automatizacion (Bash .sh)    o─────────o─────────o──────┘

    # 1. Crear tu rama y saltar a ella en un solo paso:
    git checkout -b rama-automatizacion

    # 2. Volver a main y fusionar tu rama cuando ya funciona:
    git checkout main
    git merge rama-automatizacion

---

## ⚔️ 3.3 ¿Cómo sobrevivir a un Conflicto de Fusión (*Merge Conflict*)?

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

## 🏆 RETO DEL DÍA 3 (15% en Canvas): Multiverso y Sabotaje Controlado

1. **Repositorio del Equipo:** Creen el repositorio oficial en GitHub y completen la portada `README.md` con la tabla de roles.
2. **Trabajo en Ramas (Tema 3.3):** Cada integrante debe crear su propia rama (`rama-hardware`, `rama-automatizacion`, `rama-documentacion`), hacer al menos **2 commits desde la terminal** y fusionarla (`merge`) hacia `main`.
3. **Sabotaje Controlado:** Dos compañeros editarán a propósito la misma línea del `README.md` para provocar un **Merge Conflict**, resolverlo y documentar la experiencia en el mismo `README.md`.
4. **Entrega en Canvas:** Pegar únicamente el enlace (URL) del repositorio de GitHub del equipo.

---

# 🤖 DÍA 4: DE CERO A CREADOR CON IA GENERATIVA
## 4. Generación de Código con Inteligencia Artificial
### 4.1 Introducción · 4.2 IA Generativa de código · 4.3 Análisis, diseño y generación con IA

> *"El nuevo lenguaje de programación más poderoso del mundo es el español bien estructurado. La IA escribe la sintaxis; tú pones la arquitectura y el criterio crítico."*

---

## 🧠 4.1 y 4.2 ¿Por qué falla el "Copy-Paste" a ciegas con la IA?

| Enfoque | ❌ El Novato ("Hazme todo") | ✅ El Arquitecto (Método de 3 Fases) |
| :--- | :--- | :--- |
| **Cómo le pide a la IA** | *"Hazme un código de Arduino para un cohete"* | Divide el proceso en **1) Análisis, 2) Diseño y 3) Generación modular** |
| **Qué entrega la IA** | Código genérico con pines inventados que no conecta con tu script de Bash | Código exacto para tus pines de Wokwi que lee los comandos de tu `control_mision.sh` |
| **Qué pasa si algo falla** | Nadie en el equipo entiende el código ni sabe qué línea corregir | El equipo audita el código, detecta alucinaciones y sabe explicarlo en vivo |

---

## 📐 4.3 Metodología en 3 Fases: Analizar → Diseñar → Generar

    ┌────────────────────────────┐      ┌────────────────────────────┐      ┌────────────────────────────┐
    │      FASE 1: ANÁLISIS      │      │       FASE 2: DISEÑO       │      │     FASE 3: GENERACIÓN     │
    │ • Prohibido pedir código   │ ───► │ • Tabla de Pines (Pinout)  │ ───► │ • Script Bash (.sh)        │
    │ • Definir 3 Entradas       │      │ • Diagrama de flujo        │      │ • Código Arduino (sketch)  │
    │ • Definir 3 Reglas Lógicas │      │   Terminal ➔ Hardware      │      │ • Circuito diagram.json    │
    │ • Definir 3 Salidas físicas│      │ • Estructura de archivos   │      │ • Auditoría Humana         │
    └────────────────────────────┘      └────────────────────────────┘      └────────────────────────────┘

---

## 🪄 Cómo pedirle a la IA el Circuito Completo para Wokwi

Además del código en C++ o MicroPython, puedes pedirle a la IA que genere el archivo **`diagram.json`** para que Wokwi dibuje y conecte todos los cables automáticamente:

    PROMPT DE FASE 3 PARA TU EQUIPO:
    "Actúa como ingeniero de sistemas embebidos. Con base en nuestra tabla de pines del Diseño:
    1. Genera el código para Arduino Uno (sketch.ino) comentado línea por línea que lea por el
       Puerto Serial las órdenes de nuestro script de Bash (CMD_LAUNCH:180, CMD_SERVO_ACTION:90,
       CMD_ABORT:0) y controle el Servomotor en el Pin 9, LED Verde en Pin 12 y LED Rojo en Pin 13.
    2. Genera el código JSON completo para el archivo 'diagram.json' de Wokwi.com con esos
       componentes ya posicionados y cableados."

---

## 🔍 La "Auditoría Humana" (Requisito Clave de Evaluación)

Toda IA Generativa comete errores o "alucinaciones". Para obtener el 100% en el entregable de hoy, tu equipo debe documentar en `DISENO_IA.md` **qué error detectaron y corrigieron**:

* **Caso típico 1 (En Bash):** La IA olvida poner espacios dentro de `[ "$A" == "$B" ]` o usa operadores de Python dentro de un script `.sh`.
* **Caso típico 2 (En la conexión):** El script de Bash imprime `"DESPEGAR"`, pero el código de Arduino que dio la IA espera leer `"CMD_LAUNCH"`.
* **Caso típico 3 (En Wokwi):** La IA conecta un LED sin conectar el cable negro de tierra (`GND`) en el archivo `diagram.json`.

---

## 🏆 RETO DEL DÍA 4 (15% en Canvas): Archivo `DISENO_IA.md`

1. Creen en su repositorio de GitHub el archivo **`DISENO_IA.md`**.
2. Documenten sus **3 Fases** (Prompts utilizados + Resultados de Análisis, Tabla de Pines/Diagrama de Diseño y Enlaces al código generado).
3. Completen la sección **"Auditoría Humana"** explicando con sus propias palabras cómo funciona su código y qué error o mejora corrigieron respecto a la primera versión que les dio la IA.
4. Suban el enlace directo a su archivo `DISENO_IA.md` en Canvas.

---

# 🏆 DÍA 5 (VIERNES): DEMO DAY & FERIA DE SUPERPODERES
## Evidencia Integradora Final (40% de la Calificación)
### Integración Total: Terminal Unix + Script Bash + Git + IA + Hardware/Wokwi

* **⏱️ Tiempo por equipo:** **5 minutos exactos** (3 min de demostración en vivo + 2 min de Ruleta de Preguntas).
* **🚫 Regla de Oro "Cero Mouse":** Para iniciar su presentación, el equipo debe abrir la **Terminal**, hacer `git pull` de su repositorio y lanzar todo con `./control_mision.sh`.

---

## ⏱️ Estructura de tus 5 Minutos en el Escenario

| Minuto | Qué sucede en el frente | Qué se evalúa en la Rúbrica Final |
| :--- | :--- | :--- |
| **Min 0:00 - 1:00** | **El Pitch del Problema:** ¿Qué construyeron y por qué importa para su área o misión? | Creatividad y aplicación multidisciplinaria (**20 pts**). |
| **Min 1:00 - 3:00** | **Ejecución en Vivo desde Terminal:** `git pull` → `./control_mision.sh` con 2 argumentos distintos → Reacción en Wokwi o Arduino físico. | Integración de las 4 herramientas (**30 pts**) y calidad técnica del repositorio (**25 pts**). |
| **Min 3:00 - 5:00** | **La Ruleta de Comandos:** El profesor elige al azar a un integrante para responder o ejecutar un comando en vivo. | Defensa individual y dominio real del proyecto (**25 pts**). |

---

## 🎡 La Ruleta de Comandos (Banco de Retos en Vivo del Viernes)

Prepárate con tu equipo, porque a cualquiera le puede tocar una de estas acciones rápidas de 30 segundos frente al proyector:

1. **Reto Terminal (Tema 1):** *"Desde la terminal, muéstranos todos los archivos ocultos de tu repositorio o busca en qué línea de tu script aparece la palabra `if` usando `grep`."*
2. **Reto Bash en Vivo (Tema 2):** *"Ejecuta tu `./control_mision.sh` pasándole un valor de energía bajo para demostrar cómo tu condicional bloquea la misión automáticamente."*
3. **Reto Multiverso Git (Tema 3):** *"Escribe en la terminal el comando para ver todas las ramas (`branches`) o los últimos 3 commits de tu equipo y explícanos cómo resolvieron su conflicto del miércoles."*
4. **Reto Auditoría IA (Tema 4):** *"Señala en pantalla qué línea del código de Arduino/Wokwi recibe la orden del script de Bash y qué error tuvieron que corregirle a la IA el jueves."*

---

## 🎉 ¡Misión Cumplida, Escuadrón!

En solo 5 días pasaste de ver una pantalla negra intimidante a:
* Navegar y filtrar sistemas **Unix/Linux** a velocidad profesional.
* Automatizar decisiones con **Scripts de Bash (`.sh`)**.
* Colaborar en equipo usando **Git, GitHub y Ramas** como en la industria tecnológica.
* Dirigir a la **Inteligencia Artificial** con metodología de ingeniería (**Análisis → Diseño → Código**) para controlar hardware físico y simulado.

> **¡Mucho éxito en su Demo Day! 🚀**  
> *Prof. Alison Muñoz Capote — Tecnológico de Monterrey, Campus Toluca*