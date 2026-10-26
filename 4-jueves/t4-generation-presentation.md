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
  h3 { color: var(--dark); font-size: 1.4em; display: flex; align-items: center; justify-content: flex-start; gap: 10px; }
  .card { background: var(--card); border-radius: 12px; padding: 30px; box-shadow: 0 10px 25px rgba(0,0,0,0.05); border: 1px solid #E5E7EB; margin-bottom: 25px; }
  .card-flex { display: flex; align-items: center; gap: 20px; }
  .grid-2 { display: grid; grid-template-columns: 1fr 1fr; gap: 30px; }
  .grid-3 { display: grid; grid-template-columns: repeat(3, 1fr); gap: 20px; text-align: center; }
  code { font-family: 'Fira Code', monospace; background: #E5E7EB; color: var(--violet); padding: 4px 10px; border-radius: 6px; font-size: 0.9em; font-weight: 600; }
  .highlight { color: var(--electric); font-weight: 600; }
  .icon-container { display: flex; justify-content: center; align-items: center; margin-bottom: 20px; }
---

# Día 4: De Cero a Creador
**IA Generativa y Simulación en Wokwi**

<br><br><br><br>
**Prof. Alison Muñoz Capote**
Tecnológico de Monterrey | Campus Toluca

---

# La Promesa de Hoy

<div class="card" style="text-align: center; padding: 60px 40px; margin-top: 20px;">
  <div class="icon-container">
    <svg width="80" height="80" viewBox="0 0 24 24" fill="none" stroke="#00D2FC" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"><path d="M12 2v4M12 18v4M4.93 4.93l2.83 2.83M16.24 16.24l2.83 2.83M2 12h4M18 12h4M4.93 19.07l2.83-2.83M16.24 7.76l2.83-2.83M12 8a4 4 0 1 0 0 8 4 4 0 0 0 0-8z"></path></svg>
  </div>
  <h2>Ingenieros, no transcriptores</h2>
  <p style="font-size: 1.5em; color: #4B5563; margin-top: 20px;">
    Dejaremos de copiar ciegamente a la IA.<br>
    <span class="highlight">Aprenderemos a diseñar, delegar y auditar.</span>
  </p>
</div>

---

# 01. El Problema del "Copy-Paste"

<div class="grid-2" style="margin-top: 40px; align-items: center;">
  <div class="card" style="text-align: center; border-left: 6px solid #E63946;">
    <svg width="60" height="60" viewBox="0 0 24 24" fill="none" stroke="#E63946" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round" style="margin-bottom: 15px;"><path d="M10.29 3.86L1.82 18a2 2 0 0 0 1.71 3h16.94a2 2 0 0 0 1.71-3L13.71 3.86a2 2 0 0 0-3.42 0z"></path><line x1="12" y1="9" x2="12" y2="13"></line><line x1="12" y1="17" x2="12.01" y2="17"></line></svg>
    <h3 style="color: #E63946; justify-content: center; margin-bottom: 20px;">Prompts Pobres</h3>
    <p style="font-size: 0.9em; color: #6B7280; line-height: 1.6;">"Hazme un código para prender luces con un botón".</p>
    <p style="font-size: 0.9em; font-weight: bold; color: var(--dark); margin-top: 10px;">➔ Produce código inestable, alucinaciones y hardware incompatible.</p>
  </div>
  
  <div style="text-align: center;">
    <h3 style="color: var(--violet); margin-bottom: 15px; justify-content: center;">Ingeniería de Prompts</h3>
    <p style="color: #4B5563; font-size: 1.2em;">La IA es un <span class="highlight">asistente junior</span>.<br>El ingeniero diseña la arquitectura.</p>
  </div>
</div>

---

# 02. El Método: Análisis y Diseño

**Antes de abrir ChatGPT o Gemini.**

<div class="grid-2" style="margin-top: 30px;">
  <div class="card" style="border-top: 4px solid var(--electric);">
    <h3 style="color: var(--electric); justify-content: flex-start; margin-bottom: 15px;">1. Fase de Análisis</h3>
    <ul style="color: #4B5563; font-size: 0.9em; line-height: 2; list-style: square; padding-left: 20px;">
      <li><strong>Entradas:</strong> ¿Qué lee el sistema?</li>
      <li><strong>Salidas:</strong> ¿Qué activa el sistema?</li>
      <li><strong>Reglas:</strong> Lógica condicional.</li>
    </ul>
  </div>
  
  <div class="card" style="border-top: 4px solid var(--violet);">
    <h3 style="color: var(--violet); justify-content: flex-start; margin-bottom: 15px;">2. Tabla de Pines</h3>
    <ul style="color: #4B5563; font-size: 0.9em; line-height: 2; list-style: square; padding-left: 20px;">
      <li>Sensor de Distancia ➔ Pin 5</li>
      <li>Servomotor ➔ Pin 9</li>
      <li>LED Alerta ➔ Pin 13</li>
    </ul>
  </div>
</div>

---

# 03. Generación y Wokwi

**De texto a circuito funcional instantáneo.**

<div class="card card-flex" style="margin-top: 30px; border-left: 6px solid var(--dark);">
  <svg width="80" height="80" viewBox="0 0 24 24" fill="none" stroke="#1A252C" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round" style="flex-shrink: 0;"><rect x="4" y="4" width="16" height="16" rx="2" ry="2"></rect><path d="M9 9h6v6H9z"></path><path d="M9 1v3M15 1v3M9 20v3M15 20v3M20 9h3M20 14h3M1 9h3M1 14h3"></path></svg>
  <div style="text-align: left; margin-left: 20px;">
    <h3 style="margin-bottom: 15px;">Pedimos dos archivos:</h3>
    <code style="display: block; margin-bottom: 10px; font-size: 1.1em;">sketch.ino (Lógica de Arduino)</code>
    <code style="display: block; font-size: 1.1em;">diagram.json (Cableado Virtual)</code>
    <p style="margin-top: 15px; color: #4B5563; font-size: 0.9em;">Se pegan en Wokwi.com y el circuito se dibuja solo.</p>
  </div>
</div>

---

# 04. El Reto: Auditoría Humana

<div class="grid-2" style="align-items: center; margin-top: 30px;">
  <div>
    <h3 style="color: var(--violet); margin-bottom: 15px; justify-content: flex-start;">Misión Crítica</h3>
    <ul style="color: #4B5563; line-height: 1.8; font-size: 0.95em;">
      <li>Generar el circuito base con IA.</li>
      <li><strong>Detectar al menos un error</strong> o alucinación de la IA.</li>
      <li>Conectar Bash con Wokwi.</li>
      <li>Redactar el análisis en <code>DISENO_IA.md</code>.</li>
    </ul>
  </div>
  
  <div class="card" style="text-align: center; border: 2px dashed var(--violet);">
    <svg width="60" height="60" viewBox="0 0 24 24" fill="none" stroke="#7B2CBF" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round" style="margin-bottom: 15px;"><circle cx="11" cy="11" r="8"></circle><line x1="21" y1="21" x2="16.65" y2="16.65"></line><line x1="11" y1="8" x2="11" y2="14"></line><line x1="8" y1="11" x2="14" y2="11"></line></svg>
    <h3 style="justify-content: center;">El Humano Valida</h3>
    <p style="font-size: 0.85em; color: #6B7280; margin-top: 10px;">La IA propone, pero tu firma avala el funcionamiento.</p>
  </div>
</div>

---

# Valor Entregado

<div class="card" style="text-align: center; padding: 60px 40px; margin-top: 20px; border-bottom: 6px solid var(--electric);">
  <div class="icon-container">
    <svg width="80" height="80" viewBox="0 0 24 24" fill="none" stroke="#00D2FC" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"><path d="M12 22s8-4 8-10V5l-8-3-8 3v7c0 6 8 10 8 10z"></path></svg>
  </div>
  <h2>Creadores de Tecnología</h2>
  <p style="font-size: 1.4em; color: #4B5563; margin-top: 20px;">
    Poseen el superpoder de <strong>convertir lenguaje natural en sistemas funcionales</strong>. Saben delegar la sintaxis y concentrarse en la arquitectura.
  </p>
</div>