# 🤖 Bitácora de Ingeniería con IA (Tema 4: Análisis, Diseño y Generación)

## 1. Fase de Análisis (Tema 4.3a)
* **Problema real que resuelve nuestro prototipo:**  
  [Describir en 1 párrafo qué problema de negocios, diseño, derecho o ingeniería ataca el proyecto].
* **Prompt de Análisis utilizado:**  
  > `[Pegar aquí el prompt exacto que le dieron a la IA]`
* **Requerimientos definidos (Entradas, Reglas y Salidas):**
  * **Entradas:** [Ej. Argumento 1: Modo de operación, Argumento 2: Nivel de riesgo/energía, Sensor de distancia].
  * **Reglas Lógicas:** [Ej. Si la distancia es menor a 20 cm y el modo es ALERTA, activar cierre].
  * **Salidas:** [Ej. Servomotor gira a 90°, LED Rojo parpadea, registro en bitácora].

---

## 2. Fase de Diseño y Arquitectura (Tema 4.3b)
* **Tabla de Conexiones del Circuito (Arduino / ESP32 / Wokwi):**

| Componente | Pin en la Tarjeta | Función en el Proyecto |
| :--- | :--- | :--- |
| Servomotor | Pin `9` | [Ej. Abre el paracaídas / Mueve compuerta] |
| LED Verde | Pin `12` | [Ej. Indica operación autorizada] |
| LED Rojo | Pin `13` | [Ej. Indica bloqueo de seguridad] |

* **Diagrama de Flujo (Terminal Bash → Hardware):**
```text
[Usuario en Terminal] --> ./control_mision.sh ARG1 ARG2 
                      --> [Validación if/else en Bash] 
                      --> [Genera Comando Serial] 
                      --> [Arduino mueve Servomotor y LEDs]