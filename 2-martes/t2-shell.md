---
marp: true
theme: default
html: true
size: 16:9
style: |
  @import url('https://fonts.googleapis.com/css2?family=Inter:wght@400;600&family=Space+Grotesk:wght@600;700&family=Fira+Code&display=swap');
  :root {
    --dark: #1A252C;
    --electric: #00D2FC;
    --violet: #7B2CBF;
    --light: #F9FAFB;
    --card: #FFFFFF;
  }
  section {
    background-color: var(--light);
    color: var(--dark);
    font-family: 'Inter', sans-serif;
    font-size: 26px;
    padding: 60px 80px;
  }
  h1, h2, h3 { font-family: 'Space Grotesk', sans-serif; margin-top: 0; }
  h1 { color: var(--dark); font-size: 2.4em; border-bottom: 4px solid var(--electric); padding-bottom: 15px; margin-bottom: 40px; }
  h2 { color: var(--violet); font-size: 1.8em; }
  h3 { color: var(--dark); font-size: 1.4em; display: flex; align-items: center; justify-content: center; gap: 10px; }
  .card { background: var(--card); border-radius: 12px; padding: 30px; box-shadow: 0 10px 25px rgba(0,0,0,0.05); border: 1px solid #E5E7EB; margin-bottom: 25px; }
  .card-flex { display: flex; align-items: center; gap: 20px; }
  .grid-2 { display: grid; grid-template-columns: 1fr 1fr; gap: 30px; }
  code { font-family: 'Fira Code', monospace; background: #E5E7EB; color: var(--violet); padding: 4px 10px; border-radius: 6px; font-size: 0.9em; font-weight: 600; }
  .highlight { color: var(--electric); font-weight: 600; }
  .icon-container { display: flex; justify-content: center; align-items: center; margin-bottom: 20px; }
---

# Día 2: El Tablero de Mando
**Programación Shell y Automatización (Bash)**

<br><br><br><br>
**Prof. Alison Muñoz Capote**
Tecnológico de Monterrey | Campus Toluca

---

# La Promesa de Hoy

<div class="card" style="text-align: center; padding: 60px 40px; margin-top: 20px;">
  <div class="icon-container">
    <svg width="80" height="80" viewBox="0 0 24 24" fill="none" stroke="#7B2CBF" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"><rect x="3" y="3" width="18" height="18" rx="2" ry="2"></rect><line x1="9" y1="3" x2="9" y2="21"></line><path d="M14 8h3"></path><path d="M14 12h3"></path><path d="M14 16h3"></path></svg>
  </div>
  <h2>De Operadores a Arquitectos</h2>
  <p style="font-size: 1.2em; color: #4B5563; max-width: 800px; margin: 0 auto; line-height: 1.6;">
    Ayer aprendieron a hablar con el sistema de forma manual. Hoy, aprenderán a programar rutinas para que la máquina trabaje por ustedes de forma <span class="highlight">autónoma y condicional</span>.
  </p>
</div>

---

# 01. El "Shebang"

**El punto de partida de todo script.**

<div class="card card-flex" style="border-left: 6px solid var(--electric); margin-top: 40px;">
  <svg width="60" height="60" viewBox="0 0 24 24" fill="none" stroke="#00D2FC" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><polyline points="4 17 10 11 4 5"></polyline><line x1="12" y1="19" x2="20" y2="19"></line></svg>
  <div style="text-align: left;">
    <h3 style="margin-bottom: 10px; justify-content: flex-start;"><code>#!/bin/bash</code></h3>
    <p style="margin: 0; color: #4B5563; font-size: 0.95em;">Debe ser estrictamente la primera línea de tu archivo. Le indica a Unix qué intérprete usar para ejecutar las instrucciones siguientes.</p>
  </div>
</div>

---

# 02. Definición de Variables

**Regla de oro en Bash:** Cero espacios alrededor del signo igual.

<div class="grid-2">
  <div class="card" style="text-align: center;">
    <svg width="50" height="50" viewBox="0 0 24 24" fill="none" stroke="#1A252C" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round" style="margin-bottom:15px;"><path d="M21 16V8a2 2 0 0 0-1-1.73l-7-4a2 2 0 0 0-2 0l-7 4A2 2 0 0 0 3 8v8a2 2 0 0 0 1 1.73l7 4a2 2 0 0 0 2 0l7-4A2 2 0 0 0 21 16z"></path></svg>
    <h3 style="color: #E63946;">
      <svg width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="#E63946" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><circle cx="12" cy="12" r="10"></circle><line x1="15" y1="9" x2="9" y2="15"></line><line x1="9" y1="9" x2="15" y2="15"></line></svg>
      Error Común
    </h3>
    <code>ENERGIA = 100</code>
    <p style="font-size: 0.8em; color: #6B7280; margin-top: 15px;">Bash pensará que "ENERGIA" es un comando que intentas ejecutar.</p>
  </div>
  <div class="card" style="text-align: center; border-bottom: 5px solid var(--violet);">
    <svg width="50" height="50" viewBox="0 0 24 24" fill="none" stroke="#7B2CBF" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round" style="margin-bottom:15px;"><path d="M22 11.08V12a10 10 0 1 1-5.93-9.14"></path><polyline points="22 4 12 14.01 9 11.01"></polyline></svg>
    <h3 style="color: var(--violet);">
      <svg width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="var(--violet)" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M22 11.08V12a10 10 0 1 1-5.93-9.14"></path><polyline points="22 4 12 14.01 9 11.01"></polyline></svg>
      Forma Correcta
    </h3>
    <code>ENERGIA=100</code>
    <p style="font-size: 0.8em; color: #6B7280; margin-top: 15px;">Para leerla después: <code>echo $ENERGIA</code></p>
  </div>
</div>

---

# 03. Arreglos y Listas

**Colecciones de datos en una sola estructura.**

<div class="card">
  <div class="card-flex">
    <svg width="50" height="50" viewBox="0 0 24 24" fill="none" stroke="#00D2FC" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"><line x1="8" y1="6" x2="21" y2="6"></line><line x1="8" y1="12" x2="21" y2="12"></line><line x1="8" y1="18" x2="21" y2="18"></line><line x1="3" y1="6" x2="3.01" y2="6"></line><line x1="3" y1="12" x2="3.01" y2="12"></line><line x1="3" y1="18" x2="3.01" y2="18"></line></svg>
    <div style="flex: 1; text-align: left;">
      <p style="margin: 0 0 15px 0;">Declaración de un arreglo:</p>
      <code style="font-size: 1.1em; display: block; padding: 15px;">SISTEMAS=("Navegacion" "Propulsion" "Soporte_Vital")</code>
    </div>
  </div>
  
  <ul style="margin-top: 25px; line-height: 1.8; color: #4B5563;">
    <li>Acceder al primer elemento: <code>echo ${SISTEMAS[0]}</code> (Bash empieza en 0)</li>
    <li>Acceder a todos: <code>echo ${SISTEMAS[@]}</code></li>
  </ul>
</div>

---

# 04. Argumentos en Línea de Comandos

**Inyección de parámetros externos al ejecutar.**

<div class="grid-2" style="align-items: center;">
  <div>
    <p style="color: #4B5563;">En lugar de código rígido, pasamos valores dinámicos al momento de llamar el script.</p>
    <br>
    <code>$0</code> : Nombre del script<br><br>
    <code>$1</code> : Primer argumento<br><br>
    <code>$2</code> : Segundo argumento
  </div>
  <div class="card" style="text-align: center; border-left: 5px solid var(--electric);">
    <svg width="40" height="40" viewBox="0 0 24 24" fill="none" stroke="#1A252C" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round" style="margin-bottom:10px;"><polygon points="5 3 19 12 5 21 5 3"></polygon></svg>
    <h3 style="font-size: 1.1em; margin-bottom: 15px; justify-content: center;">Ejecución:</h3>
    <code>./control_mision.sh DESPEGUE 100</code>
  </div>
</div>

---

# 05. Lógica Condicional (If / Elif)

<div class="grid-2">
  <div>
    <h3 style="color: var(--violet); margin-bottom: 20px; justify-content: flex-start;">Operadores Numéricos</h3>
    <ul style="line-height: 1.8; color: #4B5563; font-size: 0.9em;">
      <li><code>-eq</code> : Igual a (equal)</li>
      <li><code>-ne</code> : Diferente de (not equal)</li>
      <li><code>-gt</code> : Mayor que (greater than)</li>
      <li><code>-ge</code> : Mayor o igual que</li>
      <li><code>-lt</code> : Menor que (less than)</li>
      <li><code>-le</code> : Menor o igual que</li>
    </ul>
  </div>
  
  <div class="card" style="background: #1A252C; color: #FFF; border: none; text-align: left;">
    <svg width="30" height="30" viewBox="0 0 24 24" fill="none" stroke="#00D2FC" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" style="float: right;"><rect x="2" y="3" width="20" height="14" rx="2" ry="2"></rect><line x1="8" y1="21" x2="16" y2="21"></line><line x1="12" y1="17" x2="12" y2="21"></line></svg>
    <code style="background: transparent; color: #00D2FC; display: block; font-size: 0.9em; line-height: 1.6;">
      if [ $2 -lt 20 ]; then<br>
      &nbsp;&nbsp;echo "CMD_ABORT"<br>
      elif [ $2 -ge 80 ]; then<br>
      &nbsp;&nbsp;echo "CMD_LAUNCH"<br>
      else<br>
      &nbsp;&nbsp;echo "STANDBY"<br>
      fi
    </code>
  </div>
</div>

---

# 06. El Reto: Módulo de Control

<div class="card card-flex" style="border-left: 6px solid var(--violet);">
  <svg width="60" height="60" viewBox="0 0 24 24" fill="none" stroke="#7B2CBF" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"><circle cx="12" cy="12" r="10"></circle><path d="M12 2a14.5 14.5 0 0 0 0 20 14.5 14.5 0 0 0 0-20"></path><path d="M2 12h20"></path></svg>
  <div style="text-align: left;">
    <h3 style="margin-bottom: 5px; justify-content: flex-start;">Misión de Hoy</h3>
    <p style="margin: 0; color: #4B5563; font-size: 0.9em;">Crear el script <code>control_mision.sh</code>. Debe recibir una instrucción (ej. "DESPEGUE") y un nivel de energía, y usando condicionales decidir si imprime <code>CMD_LAUNCH</code>, <code>CMD_SERVO_ACTION</code> o <code>CMD_ABORT</code>.</p>
  </div>
</div>

**Autocalificación:** Al terminar, pegaremos su código en el tablero del profesor para que el sistema valide su lógica en vivo.

---

# Valor Entregado

<div class="card" style="text-align: center; padding: 60px 40px; margin-top: 20px; border-bottom: 6px solid var(--electric);">
  <div class="icon-container">
    <svg width="80" height="80" viewBox="0 0 24 24" fill="none" stroke="#00D2FC" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"><polyline points="20 6 9 17 4 12"></polyline></svg>
  </div>
  <h2>Automatización Algorítmica</h2>
  <p style="font-size: 1.2em; color: #4B5563; max-width: 800px; margin: 0 auto; line-height: 1.6;">
    Han dejado de dar instrucciones una por una. Ahora poseen la capacidad de crear programas que evalúan el entorno, procesan parámetros externos y toman decisiones lógicas sin intervención humana.
  </p>
</div>