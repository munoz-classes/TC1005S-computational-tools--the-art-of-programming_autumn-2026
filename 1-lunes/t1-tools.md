---
marp: true
theme: default
html: true
paginate: true
style: |
  @import url('https://fonts.googleapis.com/css2?family=Space+Grotesk:wght@400;700&family=Inter:wght@400;500;700&display=swap');
  @import url('https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css');

  :root {
    --ground: #F9FAFB;
    --ground-alt: #F3F4F6;
    --text-main: #1A252C;
    --text-muted: #4B5563;
    --electric: #00D2FC;
    --violet: #7B2CBF;
  }

  section {
    background-color: var(--ground);
    color: var(--text-main);
    font-family: 'Inter', sans-serif;
    font-size: 24px;
    display: flex;
    flex-direction: column;
    justify-content: center;
    padding: 60px;
  }

  section.alt-bg { background-color: var(--ground-alt); }

  h1, h2, h3, h4 {
    font-family: 'Space Grotesk', sans-serif;
    color: var(--text-main);
    margin: 0;
  }

  h1 { font-size: 3.2em; line-height: 1.1; margin-bottom: 20px;}
  h2 { font-size: 2.2em; margin-bottom: 20px;}
  h3 { font-size: 1.5em; margin-bottom: 10px;}

  p { color: var(--text-muted); line-height: 1.4; }
  
  ul { color: var(--text-main); margin-left: 20px; }
  li { margin-bottom: 15px; }

  .eyebrow {
    color: var(--violet);
    font-family: 'Space Grotesk', sans-serif;
    font-weight: 700;
    text-transform: uppercase;
    letter-spacing: 2px;
    font-size: 0.6em;
    margin-bottom: 15px;
  }

  .cyber-line {
    height: 4px;
    background: linear-gradient(90deg, var(--electric), var(--violet));
    width: 120px;
    margin: 30px 0;
    border-radius: 2px;
  }

  .cmd {
    font-family: monospace;
    background: var(--text-main);
    color: var(--electric);
    padding: 8px 20px;
    border-radius: 8px;
    font-size: 1.4em;
    display: inline-block;
    margin-bottom: 15px;
  }

  /* Flex Layouts */
  .center-layout { text-align: center; display: flex; flex-direction: column; align-items: center; width: 100%; }
  .split-layout { display: flex; justify-content: space-between; align-items: center; gap: 50px; width: 100%; height: 100%; }
  .split-col { flex: 1; }

  .card-row { display: flex; gap: 30px; width: 100%; justify-content: center; margin-top: 20px;}
  .card {
    background: white;
    padding: 30px;
    border-radius: 12px;
    box-shadow: 0 10px 30px rgba(26, 37, 44, 0.05);
    border-top: 4px solid var(--electric);
    flex: 1;
  }
  .card.violet { border-top-color: var(--violet); }

  .icon-big { font-size: 3em; margin-bottom: 20px; }
  .electric-txt { color: var(--electric); }
  .violet-txt { color: var(--violet); }
  .tech-icon { font-size: 1.2em; color: var(--electric); margin-right: 10px; }
---

<!-- Slide 1: Título -->
<div class="center-layout">
  <div class="eyebrow">TC1005S • Semana Tec</div>
  <h1>Herramientas Computacionales:<br>El Arte de la Programación</h1>
  <p>Día 1: Orígenes y Comandos de Unix</p>
  <div class="cyber-line"></div>
</div>

---

<!-- Slide 2: Promesa Winston -->
<!-- _class: alt-bg -->
<div class="center-layout">
  <i class="fa-solid fa-terminal icon-big violet-txt"></i>
  <h2 style="max-width: 800px; line-height: 1.3;">
    Hoy perderán el miedo a la Terminal y tomarán el control absoluto del sistema.
  </h2>
</div>

---

<!-- Slide 3: Origen -->
<div class="split-layout">
  <div class="split-col">
    <div class="eyebrow">Génesis</div>
    <h2>1969: Bell Labs</h2>
    <p>Nace Unix. Diseñado para ser pequeño, elegante y conectar herramientas simples.</p>
    <ul style="list-style: none; padding: 0;">
      <li><i class="fa-solid fa-check tech-icon"></i><b>Multitarea</b></li>
      <li><i class="fa-solid fa-check tech-icon"></i><b>Multiusuario</b></li>
      <li><i class="fa-solid fa-check tech-icon"></i><b>Filosofía de simplicidad</b></li>
    </ul>
  </div>
  <div class="split-col center-layout">
    <i class="fa-brands fa-linux" style="font-size: 8em; color: var(--text-main);"></i>
  </div>
</div>

---

<!-- Slide 4: Anatomía -->
<div class="eyebrow">Arquitectura</div>
<h2>Anatomía del Sistema</h2>
<div class="split-layout" style="margin-top: 40px; text-align: center;">
  
  <div>
    <i class="fa-solid fa-user icon-big" style="color: var(--text-main);"></i>
    <h3>Usuario</h3>
  </div>
  
  <i class="fa-solid fa-arrow-right electric-txt" style="font-size: 2em;"></i>
  
  <div style="background: white; padding: 20px; border-radius: 12px; box-shadow: 0 10px 30px rgba(0,210,252,0.1);">
    <h3 class="electric-txt">Shell</h3>
    <p style="font-size: 0.8em; margin:0;">El traductor</p>
  </div>

  <i class="fa-solid fa-arrow-right violet-txt" style="font-size: 2em;"></i>

  <div style="background: white; padding: 20px; border-radius: 12px; box-shadow: 0 10px 30px rgba(123,44,191,0.1);">
    <h3 class="violet-txt">Kernel</h3>
    <p style="font-size: 0.8em; margin:0;">El núcleo</p>
  </div>

  <i class="fa-solid fa-arrow-right" style="font-size: 2em;"></i>

  <div>
    <i class="fa-solid fa-microchip icon-big" style="color: var(--text-main);"></i>
    <h3>Hardware</h3>
  </div>

</div>

---

<!-- Slide 5: pwd -->
<!-- _class: alt-bg -->
<div class="split-layout">
  <div class="split-col center-layout">
    <i class="fa-solid fa-map-location-dot" style="font-size: 8em; color: var(--electric);"></i>
  </div>
  <div class="split-col">
    <div class="eyebrow">Ubicación</div>
    <div class="cmd">pwd</div>
    <h2>Print Working Directory</h2>
    <p>¿Dónde estoy exactamente dentro de la computadora?</p>
    <div style="background: white; padding: 15px; border-left: 4px solid var(--electric); margin-top: 20px;">
      <code style="color: var(--text-main);">/home/alumnos/tc1005s</code>
    </div>
  </div>
</div>

---

<!-- Slide 6: Navegación ls y cd -->
<div class="eyebrow">Exploración</div>
<h2>Moviéndonos por el sistema</h2>

<div class="card-row">
  <div class="card">
    <div class="cmd">ls -la</div>
    <h3>Listar archivos</h3>
    <p style="font-size: 0.8em;">Muestra archivos visibles, ocultos y sus permisos.</p>
  </div>
  <div class="card violet">
    <div class="cmd" style="color: var(--violet);">cd</div>
    <h3>Cambiar directorio</h3>
    <ul style="font-size: 0.8em; padding: 0; list-style: none; margin-top:10px;">
      <li><code style="color: var(--electric);">cd carpeta/</code> (Entrar)</li>
      <li><code style="color: var(--violet);">cd ..</code> (Subir un nivel)</li>
    </ul>
  </div>
</div>

---

<!-- Slide 7: grep y find -->
<!-- _class: alt-bg -->
<div class="eyebrow">Investigación Forense</div>
<h2>Herramientas clave para la misión</h2>

<div style="background: white; padding: 25px; border-radius: 12px; margin-bottom: 20px; box-shadow: 0 5px 15px rgba(0,0,0,0.05); display: flex; align-items: center; gap: 30px;">
  <div class="cmd" style="margin: 0; min-width: 120px; text-align: center;">grep</div>
  <div>
    <h3 style="margin: 0;">Buscar dentro del texto</h3>
    <p style="margin: 5px 0 0 0; font-size:0.9em;">Encuentra palabras específicas dentro de archivos.</p>
  </div>
</div>

<div style="background: white; padding: 25px; border-radius: 12px; box-shadow: 0 5px 15px rgba(0,0,0,0.05); display: flex; align-items: center; gap: 30px;">
  <div class="cmd" style="color: var(--violet); margin: 0; min-width: 120px; text-align: center;">find</div>
  <div>
    <h3 style="margin: 0;">Buscar en el sistema</h3>
    <p style="margin: 5px 0 0 0; font-size:0.9em;">Localiza archivos perdidos u ocultos en carpetas.</p>
  </div>
</div>

---

<!-- Slide 8: Compilación -->
<div class="split-layout">
  <div class="split-col">
    <div class="eyebrow">Traducción</div>
    <h2>Compilación en C</h2>
    <p>Transformamos código legible por humanos en binario ejecutable por la máquina.</p>
    <div style="background: var(--text-main); padding: 20px; border-radius: 12px; margin-top: 30px;">
      <code style="color: white; font-size: 0.9em;">
        gcc <span class="electric-txt">codigo.c</span> -o <span class="violet-txt">despegue</span>
      </code>
    </div>
  </div>
  
  <div class="split-col center-layout">
    <div style="display: flex; align-items: center; gap: 20px;">
      <i class="fa-regular fa-file-code icon-big electric-txt" style="margin:0;"></i>
      <i class="fa-solid fa-arrow-right" style="font-size: 2em; color: var(--text-muted);"></i>
      <i class="fa-solid fa-rocket icon-big violet-txt" style="margin:0;"></i>
    </div>
  </div>
</div>

---

<!-- Slide 9: El Reto -->
<!-- _class: alt-bg -->
<div class="center-layout">
  <div class="eyebrow">Misión de Hoy</div>
  <h2>Escape Room Forense</h2>
</div>

<div class="card-row">
  <div class="card">
    <h3>1. Buscar</h3>
    <p style="font-size:0.8em;">Usa <b>grep</b> para hallar "SABOTAJE" en los registros.</p>
  </div>
  <div class="card violet">
    <h3>2. Localizar</h3>
    <p style="font-size:0.8em;">Usa <b>find</b> para encontrar la llave maestra oculta.</p>
  </div>
  <div class="card" style="border-top-color: var(--text-main);">
    <h3>3. Compilar</h3>
    <p style="font-size:0.8em;">Repara y compila <b>codigo.c</b> para finalizar.</p>
  </div>
</div>

---

<!-- Slide 10: Cierre Winston -->
<div class="center-layout">
  <i class="fa-solid fa-unlock-keyhole icon-big electric-txt"></i>
  <h2 style="max-width: 800px; line-height: 1.3;">
    Ahora son operadores del sistema, no solo usuarios.
  </h2>
</div>