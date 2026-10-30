---
marp: true
theme: default
html: true
paginate: true
footer: 'Prof. Alison Muñoz Capote, Departamento de Computación, Tecnológico de Monterrey Campus Toluca'
style: |
  @import url('https://fonts.googleapis.com/css2?family=Space+Grotesk:wght@400;700&family=Inter:wght@400;500;700&display=swap');
  @import url('https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css');

  :root {
    --dark: #1A252C;
    --electric: #00D2FC;
    --violet: #7B2CBF;
    --light: #F9FAFB;
    --white: #FFFFFF;
  }

  /* Estilos Base Cyber-Academy */
  section {
    background-color: var(--light);
    background-image: radial-gradient(var(--electric) 0.5px, transparent 0.5px);
    background-size: 30px 30px;
    background-position: 0 0;
    color: var(--dark);
    font-family: 'Inter', sans-serif;
    font-size: 24px;
    padding: 70px 80px;
    display: flex;
    flex-direction: column;
    justify-content: center;
  }

  h1, h2, h3 { font-family: 'Space Grotesk', sans-serif; margin: 0; }
  h1 { font-size: 3.2em; line-height: 1.1; margin-bottom: 20px; color: var(--dark); }
  h2 { font-size: 2.2em; margin-bottom: 30px; color: var(--violet); }
  h3 { font-size: 1.4em; color: var(--dark); }
  
  p { color: #4B5563; line-height: 1.6; }

  /* Pie de página */
  footer {
    left: 0;
    right: 0;
    text-align: center;
    font-size: 0.5em;
    color: var(--dark);
    font-family: 'Space Grotesk', sans-serif;
    font-weight: 700;
    letter-spacing: 1px;
    opacity: 0.7;
  }

  /* Componentes Visuales */
  .eyebrow {
    color: var(--electric);
    font-family: 'Fira Code', monospace;
    font-weight: 700;
    text-transform: uppercase;
    letter-spacing: 2px;
    font-size: 0.7em;
    margin-bottom: 10px;
  }

  .cmd {
    font-family: monospace;
    background: var(--dark);
    color: var(--electric);
    padding: 10px 20px;
    border-radius: 8px;
    font-size: 1.2em;
    display: inline-block;
    box-shadow: 0 4px 15px rgba(0, 210, 252, 0.2);
  }

  .card {
    background: var(--white);
    padding: 35px;
    border-radius: 12px;
    box-shadow: 0 10px 30px rgba(26, 37, 44, 0.08);
    border-top: 4px solid var(--electric);
  }
  .card.violet { border-top-color: var(--violet); }
  .card.dark { border-top-color: var(--dark); }

  /* Layouts */
  .center-layout { text-align: center; display: flex; flex-direction: column; align-items: center; justify-content: center; height: 100%; }
  .split { display: grid; grid-template-columns: 1fr 1fr; gap: 50px; align-items: center; }
  .grid-3 { display: grid; grid-template-columns: repeat(3, 1fr); gap: 20px; }
  .grid-4 { display: grid; grid-template-columns: repeat(4, 1fr); gap: 20px; }
  
  .tech-icon { font-size: 2em; color: var(--violet); margin-bottom: 15px; }
---

<!-- Slide 1: Título y Portada -->
<div style="position: absolute; top: 40px; right: 80px;">
  <img src="tec.jpg" width="160" alt="Logo Tec de Monterrey">
</div>
<div class="split">
  <div>
    <div class="eyebrow">Cierre Semana Tec // Trabajo Colaborativo</div>
    <h1>El Poder de GitHub<br>Visual y Sin Consola</h1>
    <p>Prof. Alison Muñoz Capote</p>
  </div>
  <div class="center-layout">
    <img src="https://images.unsplash.com/photo-1618401471353-b98afee0b2eb?auto=format&fit=crop&w=600&q=80" width="100%" style="border-radius: 12px; box-shadow: 0 10px 30px rgba(0,210,252,0.15);" alt="Colaboración Visual">
  </div>
</div>

---

<!-- Slide 2: Temario -->
<div class="eyebrow">Hoja de Ruta</div>
<h2>Mapa de la Sesión</h2>

<div class="card" style="border-top-color: var(--dark);">
  <ul style="list-style: none; padding: 0; line-height: 2.2; font-size: 1.2em; color: var(--dark);">
    <li><i class="fa-solid fa-cloud" style="color: var(--electric); width: 40px;"></i> <b>1. El Propósito:</b> Local vs. La Nube.</li>
    <li><i class="fa-solid fa-layer-group" style="color: var(--violet); width: 40px;"></i> <b>2. Arquitectura Visual:</b> Las 4 áreas de trabajo.</li>
    <li><i class="fa-brands fa-github" style="color: var(--electric); width: 40px;"></i> <b>3. GitHub Desktop:</b> Clonación y sincronización de equipos.</li>
    <li><i class="fa-solid fa-code-merge" style="color: var(--violet); width: 40px;"></i> <b>4. El Reto:</b> Resolución de conflictos sin miedo.</li>
  </ul>
</div>

---

<!-- Slide 3: Local vs Nube -->
<div class="center-layout">
  <div class="eyebrow">Paradigma de Trabajo</div>
  <h2 style="margin-bottom: 40px;">Tu Computadora vs. La Nube</h2>

  <div class="split" style="width: 100%; gap: 40px;">
    <!-- Tarjeta Local -->
    <div class="card dark center-layout" style="padding: 40px;">
      <i class="fa-solid fa-laptop-code" style="font-size: 3.5em; color: var(--dark); margin-bottom: 20px;"></i>
      <h3 style="margin-bottom: 15px;">Entorno Local</h3>
      <p style="font-size: 0.9em; text-align: center; margin: 0; line-height: 1.5;">
        El trabajo ocurre aquí. Los archivos viven en tu disco duro. <b>Riesgo:</b> Si tu equipo falla, el código en progreso corre peligro y nadie más puede verlo.
      </p>
    </div>    
    <!-- Tarjeta Nube -->
    <div class="card violet center-layout" style="padding: 40px;">
      <i class="fa-brands fa-github" style="font-size: 3.5em; color: var(--violet); margin-bottom: 20px;"></i>
      <h3 style="margin-bottom: 15px; color: var(--violet);">GitHub (La Nube)</h3>
      <p style="font-size: 0.9em; text-align: center; margin: 0; line-height: 1.5;">
        El repositorio central. Es el respaldo global, el puente de sincronización del equipo y el único núcleo de la <b style="color: var(--electric);">verdad colaborativa</b>.
      </p>
    </div>
  </div>
</div>

---

<!-- Slide 4: Las 4 Áreas (Visuales) -->
<div class="center-layout">
  <div class="eyebrow">Arquitectura Interna</div>
  <h2 style="margin-bottom: 15px;">Las 4 Zonas (Sin Comandos)</h2>
  <p style="margin-bottom: 40px; text-align: center; max-width: 800px; font-size: 0.9em;">
    El viaje de tu código desde que lo escribes hasta que lo compartes con el mundo.
  </p>

  <div class="grid-4" style="width: 100%;">
    <!-- 1. Archivos (Working Dir) -->
    <div class="card dark center-layout" style="padding: 20px;">
      <i class="fa-solid fa-folder-open tech-icon" style="color: var(--dark); font-size: 2em; margin-bottom: 15px;"></i>
      <h3 style="margin-bottom: 5px; font-size: 1.1em;">1. Archivos</h3>
      <p style="font-size: 0.75em; text-align: center; margin: 0; line-height: 1.4;">Tu carpeta de trabajo real en la computadora.</p>
    </div>    
    <!-- 2. Selección (Staging) -->
    <div class="card center-layout" style="padding: 20px; border-top-color: var(--electric);">
      <i class="fa-solid fa-check-square tech-icon" style="color: var(--electric); font-size: 2em; margin-bottom: 15px;"></i>
      <h3 style="margin-bottom: 5px; color: var(--electric); font-size: 1.1em;">2. Selección</h3>
      <p style="font-size: 0.75em; text-align: center; margin: 0; line-height: 1.4;">Casillas de verificación <i>(checkboxes)</i> en GitHub Desktop.</p>
    </div>
    <!-- 3. Historial (Local Repo) -->
    <div class="card violet center-layout" style="padding: 20px; background: rgba(123, 44, 191, 0.03);">
      <i class="fa-solid fa-camera tech-icon" style="color: var(--violet); font-size: 2em; margin-bottom: 15px;"></i>
      <h3 style="margin-bottom: 5px; color: var(--violet); font-size: 1.1em;">3. Historial</h3>
      <p style="font-size: 0.75em; text-align: center; margin: 0; line-height: 1.4;">La "foto" permanente al presionar el botón <b>Commit</b>.</p>
    </div>    
    <!-- 4. Nube (Remote) -->
    <div class="card center-layout" style="padding: 20px; background: var(--dark); border: none;">
      <i class="fa-solid fa-cloud-arrow-up" style="color: var(--white); font-size: 2em; margin-bottom: 15px;"></i>
      <h3 style="margin-bottom: 5px; color: var(--white); font-size: 1.1em;">4. La Nube</h3>
      <p style="font-size: 0.75em; text-align: center; margin: 0; color: #9CA3AF; line-height: 1.4;">Subes tu trabajo dando clic en <b>Push origin</b>.</p>
    </div>
  </div>
</div>

---

<!-- Slide 5: Creación y Clonación -->
<div class="center-layout">
  <div class="eyebrow">Paso a Paso</div>
  <h2 style="margin-bottom: 30px;">Crear y Clonar en Equipo</h2>
  
  <div class="split" style="width: 100%; gap: 40px; margin-top: 20px;">
    <!-- Tarjeta Creador -->
    <div class="card dark" style="border-left: 5px solid var(--dark); border-top: none; padding: 35px;">
      <h3 style="margin-bottom: 15px; display: flex; align-items: center;">
        <i class="fa-solid fa-folder-plus tech-icon" style="color: var(--dark); margin-right: 15px; margin-bottom: 0; font-size: 1.2em;"></i> 
        1. El Creador (Líder)
      </h3>
      <p style="font-size: 0.85em; margin: 0; line-height: 1.6;">
        En GitHub Desktop: <b>File > New Repository</b>. Nombra el proyecto, decide dónde guardarlo y haz clic en <i>Publish</i> para que nazca en la nube.
      </p>
    </div>    
    <!-- Tarjeta Colaborador -->
    <div class="card" style="border-left: 5px solid var(--electric); border-top: none; padding: 35px;">
      <h3 style="margin-bottom: 15px; display: flex; align-items: center;">
        <i class="fa-solid fa-download tech-icon" style="color: var(--electric); margin-right: 15px; margin-bottom: 0; font-size: 1.2em;"></i> 
        2. El Colaborador
      </h3>
      <p style="font-size: 0.85em; margin: 0; line-height: 1.6;">
        En GitHub Desktop: <b>File > Clone Repository</b>. Busca el repositorio en la lista de GitHub.com y descárgalo. ¡Ambos tienen el mismo proyecto exacto!
      </p>
    </div>
  </div>
</div>

---

<!-- Slide 6: El Ciclo de Vida -->
<div class="center-layout">
  <div class="eyebrow">Rutina de Trabajo</div>
  <h2 style="margin-bottom: 15px;">El Ciclo Diario del Código</h2>
  <p style="margin-bottom: 40px; text-align: center; max-width: 800px; font-size: 0.9em; opacity: 0.8;">
    La sincronización no es automática. Tú decides cuándo guardar y cuándo compartir.
  </p>

  <div class="grid-3" style="width: 100%;">
    <!-- Commit -->
    <div class="card center-layout" style="padding: 25px; border-top-color: var(--dark);">
      <i class="fa-solid fa-camera tech-icon" style="color: var(--dark); font-size: 2.5em; margin-bottom: 15px;"></i>
      <h3 style="margin-bottom: 10px;">1. Commit</h3>
      <p style="font-size: 0.8em; text-align: center; margin: 0; line-height: 1.4;">Toma una foto de tus avances. Selecciona qué archivos incluir y ponle un título claro a tu trabajo.</p>
    </div>    
    <!-- Push -->
    <div class="card violet center-layout" style="padding: 25px; background: rgba(123, 44, 191, 0.03);">
      <i class="fa-solid fa-arrow-up-from-bracket tech-icon" style="color: var(--violet); font-size: 2.5em; margin-bottom: 15px;"></i>
      <h3 style="margin-bottom: 10px; color: var(--violet);">2. Push</h3>
      <p style="font-size: 0.8em; text-align: center; margin: 0; line-height: 1.4;">Empuja tus <i>commits</i> hacia la nube de GitHub para que todo el equipo pueda ver tus aportaciones.</p>
    </div>    
    <!-- Pull -->
    <div class="card center-layout" style="padding: 25px; border-top-color: var(--electric);">
      <i class="fa-solid fa-arrow-down-to-bracket tech-icon" style="color: var(--electric); font-size: 2.5em; margin-bottom: 15px;"></i>
      <h3 style="margin-bottom: 10px; color: var(--electric);">3. Pull</h3>
      <p style="font-size: 0.8em; text-align: center; margin: 0; line-height: 1.4;">Jala los cambios que tus compañeros subieron a la nube para mantener tu computadora actualizada.</p>
    </div>
  </div>
</div>

---

<!-- Slide 7: Conflictos (Ajuste de Espacios) -->
<div class="center-layout">
  <div class="eyebrow" style="margin-bottom: 5px;">El Reto de Hoy</div>
  <h2 style="margin-bottom: 10px;">Sabotaje Controlado (Conflictos)</h2>
  <p style="font-size: 0.85em; margin-bottom: 20px; text-align: center; opacity: 0.8; max-width: 800px; line-height: 1.4;">
    Un <b>Merge Conflict</b> ocurre cuando dos personas editan la misma línea. No es un error del sistema, es GitHub pidiendo que un humano decida qué versión gana.
  </p>
  
  <div class="split" style="width: 100%; gap: 30px; align-items: center;">
    <!-- Vista del Código -->
    <div style="flex: 1; text-align: left;">
       <div class="card" style="background: var(--dark); padding: 15px 20px; border: none; border-top: 4px solid #E63946;">
          <code style="background: transparent; color: #E63946; display: block; font-size: 0.75em; font-family: 'Fira Code', monospace; line-height: 1.5; padding: 0;">
            <<<<<<< HEAD (Tu computadora)<br>
            <span style="color: #00D2FC;">VARIABLE_ESTADO = Activo;</span><br>
            =======<br>
            <span style="color: #F9FAFB;">VARIABLE_ESTADO = Inactivo;</span><br>
            >>>>>>> main (Nube)<br>
          </code>
       </div>
    </div>    
    <!-- Pasos para Resolver -->
    <div style="flex: 1; display: flex; flex-direction: column; gap: 10px; text-align: left;">
      <div class="card" style="border-left: 5px solid var(--electric); padding: 12px 15px; border-top: none;">
        <h3 style="margin: 0; font-size: 0.95em; display: flex; align-items: center;">
          <i class="fa-solid fa-triangle-exclamation" style="color: var(--electric); margin-right: 10px;"></i> 1. Alerta en Desktop
        </h3>
        <p style="font-size: 0.75em; margin: 3px 0 0 28px; color: var(--dark); line-height: 1.3;">La aplicación te avisa que no puede mezclar automáticamente.</p>
      </div>
      <div class="card" style="border-left: 5px solid var(--violet); padding: 12px 15px; border-top: none;">
        <h3 style="margin: 0; font-size: 0.95em; display: flex; align-items: center;">
          <i class="fa-solid fa-code" style="color: var(--violet); margin-right: 10px;"></i> 2. Visual Studio Code
        </h3>
        <p style="font-size: 0.75em; margin: 3px 0 0 28px; color: var(--dark); line-height: 1.3;">Abre el archivo. VS Code da botones mágicos: <i>Accept Current</i> o <i>Incoming</i>.</p>
      </div>
      <div class="card" style="border-left: 5px solid var(--dark); padding: 12px 15px; border-top: none;">
        <h3 style="margin: 0; font-size: 0.95em; display: flex; align-items: center;">
          <i class="fa-solid fa-check-double" style="color: var(--dark); margin-right: 10px;"></i> 3. Confirma y Continúa
        </h3>
        <p style="font-size: 0.75em; margin: 3px 0 0 28px; color: var(--dark); line-height: 1.3;">Guarda y presiona el botón azul en Desktop para terminar la fusión.</p>
      </div>
    </div>
  </div>
</div>

---

<!-- Slide 8: Valor Final -->
<div class="center-layout">
  <div style="background: var(--white); padding: 60px; border-radius: 16px; box-shadow: 0 20px 40px rgba(123,44,191,0.1); border: 2px solid var(--violet); max-width: 850px; text-align: center;">
    <i class="fa-solid fa-people-group" style="font-size: 3.5em; color: var(--electric); margin-bottom: 25px;"></i>
    <h2 style="color: var(--dark); font-size: 2.2em; line-height: 1.2; margin: 0 0 20px 0;">
      Ingeniería Colaborativa Transversal
    </h2>
    <p style="font-size: 1.1em; color: #4B5563; margin: 0; line-height: 1.6;">
      Tener la capacidad de <b>fusionar trabajo simultáneo a nivel profesional</b> sin destruir el proyecto.<br><br>
      Ya sea diseñando edificios, estructurando negocios o programando sistemas, el control de versiones es su máxima red de seguridad.
    </p>
  </div>
</div>

---

<!-- Slide 1.5: Resumen de la Semana (El Arsenal) -->
<div class="center-layout">
  <div class="eyebrow" style="margin-bottom: 5px;">Inventario Técnico</div>
  <h2 style="margin-bottom: 15px;">Su Nuevo Arsenal</h2>
  <p style="font-size: 0.85em; margin-bottom: 30px; text-align: center; opacity: 0.8; max-width: 850px; line-height: 1.4;">
    Antes de idear, recordemos las tres capacidades fundamentales que adquirieron esta semana. <b>Ya no son herramientas, son superpoderes para su industria.</b>
  </p>

  <div class="grid-3" style="width: 100%;">
    <!-- Día 1: Terminal -->
    <div class="card dark center-layout" style="padding: 20px;">
      <i class="fa-solid fa-terminal tech-icon" style="color: var(--dark); font-size: 2em; margin-bottom: 15px;"></i>
      <h3 style="margin-bottom: 8px; font-size: 1.1em;">1. Navegación Profunda</h3>
      <div class="cmd" style="font-size: 0.7em; margin-bottom: 10px; padding: 5px 10px;">Unix Shell</div>
      <p style="font-size: 0.75em; text-align: center; margin: 0; line-height: 1.3;">
        Poder para explorar, buscar y auditar cualquier rincón del sistema sin depender de interfaces gráficas.
      </p>
    </div>    
    <!-- Día 2: Bash / Lógica -->
    <div class="card center-layout" style="padding: 20px; border-top-color: var(--electric);">
      <i class="fa-solid fa-network-wired tech-icon" style="color: var(--electric); font-size: 2em; margin-bottom: 15px;"></i>
      <h3 style="margin-bottom: 8px; color: var(--electric); font-size: 1.1em;">2. Automatización</h3>
      <div class="cmd" style="font-size: 0.7em; margin-bottom: 10px; padding: 5px 10px; color: var(--dark); background: var(--electric);">Bash Scripting</div>
      <p style="font-size: 0.75em; text-align: center; margin: 0; line-height: 1.3;">
        Capacidad de programar rutinas que toman decisiones lógicas por sí solas basadas en variables del entorno.
      </p>
    </div>    
    <!-- Día 3: Git -->
    <div class="card violet center-layout" style="padding: 20px; background: rgba(123, 44, 191, 0.03);">
      <i class="fa-solid fa-code-merge tech-icon" style="color: var(--violet); font-size: 2em; margin-bottom: 15px;"></i>
      <h3 style="margin-bottom: 8px; color: var(--violet); font-size: 1.1em;">3. Máquina del Tiempo</h3>
      <div class="cmd" style="font-size: 0.7em; margin-bottom: 10px; padding: 5px 10px; color: white; background: var(--violet);">Git & GitHub</div>
      <p style="font-size: 0.75em; text-align: center; margin: 0; line-height: 1.3;">
        Red de seguridad absoluta. Trabajo colaborativo paralelo, control de versiones y fusión de ideas sin miedo a romper nada.
      </p>
    </div>
  </div>
</div>


---

<!-- Slide 5: El Cronómetro (Espacio de Trabajo) -->
<div class="center-layout">
  <div class="eyebrow" style="margin-bottom: 5px;">Fase 1 // Trabajo en Equipo</div>
  <h2 style="margin-bottom: 15px;">El Reloj Está Corriendo</h2>

  <div class="card dark center-layout" style="width: 100%; max-width: 650px; padding: 30px;">
    <i class="fa-solid fa-stopwatch" style="font-size: 3em; color: var(--electric); margin-bottom: 10px;"></i>
    <div style="font-family: 'Fira Code', monospace; font-size: 4em; color: var(--white); margin-bottom: 10px; font-weight: 700; text-shadow: 0 0 20px rgba(0,210,252,0.4);">
      15:00
    </div>
    <h3 style="color: var(--electric); margin-bottom: 10px; font-size: 1.2em;">Tiempo de Ideación</h3>
    <p style="font-size: 0.85em; color: #9CA3AF; margin: 0; line-height: 1.4; text-align: center;">
      1. Elijan el problema en su industria.<br>
      2. Diseñen la solución (Git o Scripting).<br>
      3. Preparen su argumento de 2 minutos.
    </p>
  </div>
</div>

---

<!-- Slide 2: Reglas del Juego (Ajuste de Espacios) -->
<div class="center-layout">
  <div class="eyebrow" style="margin-bottom: 5px;">Las Reglas del Juego</div>
  <h2 style="margin-bottom: 10px;">Su Misión Multidisciplinaria</h2>
  <p style="font-size: 0.85em; margin-bottom: 25px; text-align: center; opacity: 0.8; max-width: 800px; line-height: 1.4;">
    No evaluaremos código, evaluaremos <b>visión</b>. ¿Cómo revolucionarían su propia industria utilizando la automatización y el control de versiones?
  </p>

  <div class="grid-3" style="width: 100%;">
    <div class="card center-layout" style="padding: 20px; border-top-color: var(--dark);">
      <i class="fa-solid fa-stopwatch tech-icon" style="color: var(--dark); font-size: 2em; margin-bottom: 10px;"></i>
      <h3 style="margin-bottom: 8px; font-size: 1.1em;">1. Ideación</h3>
      <p style="font-size: 0.75em; text-align: center; margin: 0; line-height: 1.3;">Tienen <b>15 minutos</b> en equipo para identificar un proceso lento en sus carreras y diseñar una solución basada en las herramientas de la semana.</p>
    </div>    
    <div class="card violet center-layout" style="padding: 20px; background: rgba(123, 44, 191, 0.03);">
      <i class="fa-solid fa-microphone tech-icon" style="color: var(--violet); font-size: 2em; margin-bottom: 10px;"></i>
      <h3 style="margin-bottom: 8px; color: var(--violet); font-size: 1.1em;">2. El Pitch</h3>
      <p style="font-size: 0.75em; text-align: center; margin: 0; line-height: 1.3;">Disponen de <b>2 minutos</b> exactos para persuadir a la junta directiva (su profesor) de que su idea ahorrará tiempo y recursos.</p>
    </div>    
    <div class="card center-layout" style="padding: 20px; border-top-color: var(--electric);">
      <i class="fa-solid fa-handshake-angle tech-icon" style="color: var(--electric); font-size: 2em; margin-bottom: 10px;"></i>
      <h3 style="margin-bottom: 8px; color: var(--electric); font-size: 1.1em;">3. La Inversión</h3>
      <p style="font-size: 0.75em; text-align: center; margin: 0; line-height: 1.3;">El inversor evaluará la viabilidad lógica y el impacto real. Los mejores pitches obtienen el financiamiento (calificación perfecta).</p>
    </div>
  </div>
</div>

---

<!-- Slide 3: Inspiración Multidisciplinaria -->
<div class="center-layout">
  <div class="eyebrow">Casos de Uso</div>
  <h2 style="margin-bottom: 20px;">El Código Transversal</h2>
  
  <div class="split" style="width: 100%; gap: 30px;">
    <div style="display: flex; flex-direction: column; gap: 15px;">
      <!-- Arte y Arquitectura -->
      <div class="card" style="border-left: 5px solid var(--dark); padding: 15px 20px; border-top: none;">
        <h3 style="margin: 0; font-size: 0.95em; display: flex; align-items: center;">
          <i class="fa-solid fa-compass-drafting" style="color: var(--dark); margin-right: 15px; font-size: 1.2em;"></i> Arquitectura y Arte
        </h3>
        <p style="font-size: 0.75em; margin: 5px 0 0 35px; color: var(--dark); line-height: 1.4;">Control de versiones (Git) para iterar modelos 3D y planos CAD colaborativos sin sobreescribir el trabajo del otro.</p>
      </div>
      <!-- Negocios e Industrial -->
      <div class="card" style="border-left: 5px solid var(--electric); padding: 15px 20px; border-top: none;">
        <h3 style="margin: 0; font-size: 0.95em; display: flex; align-items: center;">
          <i class="fa-solid fa-chart-line" style="color: var(--electric); margin-right: 15px; font-size: 1.2em;"></i> Negocios e Ing. Industrial
        </h3>
        <p style="font-size: 0.75em; margin: 5px 0 0 35px; color: var(--dark); line-height: 1.4;">Scripts (Bash) que evalúan inventarios diarios mediante condiciones automáticas para disparar alertas de logística.</p>
      </div>
      <!-- Bio y Mecatrónica -->
      <div class="card" style="border-left: 5px solid var(--violet); padding: 15px 20px; border-top: none;">
        <h3 style="margin: 0; font-size: 0.95em; display: flex; align-items: center;">
          <i class="fa-solid fa-dna" style="color: var(--violet); margin-right: 15px; font-size: 1.2em;"></i> Biotecnología y Mecatrónica
        </h3>
        <p style="font-size: 0.75em; margin: 5px 0 0 35px; color: var(--dark); line-height: 1.4;">Pipelines automáticos que buscan patrones (Grep) en bases de datos genómicas o telemetría de sensores.</p>
      </div>
    </div>    
    <div class="center-layout">
      <img src="https://images.unsplash.com/photo-1581091226825-a6a2a5aee158?auto=format&fit=crop&w=500&q=80" style="border-radius: 12px; box-shadow: 0 10px 30px rgba(0, 210, 252, 0.2); border: 2px solid var(--electric);" alt="Laboratorio Multidisciplinario">
    </div>
  </div>
</div>

---

<!-- Slide 4: Estructura del Pitch -->
<div class="center-layout">
  <div class="eyebrow">Plantilla de Presentación</div>
  <h2 style="margin-bottom: 25px;">Anatomía del Pitch Perfecto</h2>
  
  <div class="grid-3" style="width: 100%;">
    <!-- 1. El Dolor -->
    <div class="card dark center-layout" style="padding: 25px; text-align: center;">
      <div style="background: var(--dark); color: white; width: 40px; height: 40px; border-radius: 50%; display: flex; align-items: center; justify-content: center; font-weight: bold; margin-bottom: 15px; font-family: 'Space Grotesk', sans-serif;">1</div>
      <h3 style="margin-bottom: 10px;">El Caos (El Problema)</h3>
      <p style="font-size: 0.8em; margin: 0; line-height: 1.4;"><i>"Actualmente, en nuestra industria, perdemos X horas a la semana haciendo Y de forma manual y desorganizada."</i></p>
    </div>    
    <!-- 2. La Solución -->
    <div class="card center-layout" style="padding: 25px; text-align: center; border-top-color: var(--electric);">
      <div style="background: var(--electric); color: var(--dark); width: 40px; height: 40px; border-radius: 50%; display: flex; align-items: center; justify-content: center; font-weight: bold; margin-bottom: 15px; font-family: 'Space Grotesk', sans-serif;">2</div>
      <h3 style="margin-bottom: 10px; color: var(--electric);">La Magia (Tecnología)</h3>
      <p style="font-size: 0.8em; margin: 0; line-height: 1.4;"><i>"Proponemos implementar [Git / Scripting Condicional] para que el sistema rastree / decida / automatice este proceso."</i></p>
    </div>    
    <!-- 3. El Valor -->
    <div class="card violet center-layout" style="padding: 25px; text-align: center; background: rgba(123, 44, 191, 0.03);">
      <div style="background: var(--violet); color: white; width: 40px; height: 40px; border-radius: 50%; display: flex; align-items: center; justify-content: center; font-weight: bold; margin-bottom: 15px; font-family: 'Space Grotesk', sans-serif;">3</div>
      <h3 style="margin-bottom: 10px; color: var(--violet);">El Retorno (Impacto)</h3>
      <p style="font-size: 0.8em; margin: 0; line-height: 1.4;"><i>"Con esto eliminamos los cuellos de botella, garantizamos cero pérdidas de información y aceleramos la producción en un Z%."</i></p>
    </div>
  </div>
</div>

---

<!-- Slide 5: El Cronómetro (Espacio de Trabajo) -->
<div class="center-layout">
  <div class="eyebrow" style="margin-bottom: 5px;">Fase 1 // Trabajo en Equipo</div>
  <h2 style="margin-bottom: 15px;">El Reloj Está Corriendo</h2>

  <div class="card dark center-layout" style="width: 100%; max-width: 650px; padding: 30px;">
    <i class="fa-solid fa-stopwatch" style="font-size: 3em; color: var(--electric); margin-bottom: 10px;"></i>
    <div style="font-family: 'Fira Code', monospace; font-size: 4em; color: var(--white); margin-bottom: 10px; font-weight: 700; text-shadow: 0 0 20px rgba(0,210,252,0.4);">
      15:00
    </div>
    <h3 style="color: var(--electric); margin-bottom: 10px; font-size: 1.2em;">Tiempo de Ideación</h3>
    <p style="font-size: 0.85em; color: #9CA3AF; margin: 0; line-height: 1.4; text-align: center;">
      1. Elijan el problema en su industria.<br>
      2. Diseñen la solución (Git o Scripting).<br>
      3. Preparen su argumento de 2 minutos.
    </p>
  </div>
</div>

---

<!-- Slide 6: El Pitch (Ejecución) -->
<div class="center-layout">
  <div class="eyebrow" style="margin-bottom: 5px;">Fase 2 // Presentación</div>
  <h2 style="margin-bottom: 30px;">Bienvenidos al Tanque</h2>
  
  <div class="split" style="width: 100%; gap: 40px; align-items: center;">
    <div style="flex: 1.2; text-align: center;">
      <img src="https://images.unsplash.com/photo-1557804506-669a67965ba0?auto=format&fit=crop&w=600&q=80" style="width: 100%; border-radius: 12px; box-shadow: 0 10px 35px rgba(123, 44, 191, 0.2); border: 2px solid var(--violet);" alt="Presentación Ejecutiva">
    </div>    
    <div style="flex: 1; display: flex; flex-direction: column; gap: 20px; text-align: left;">
      <div class="card" style="border-left: 5px solid var(--electric); padding: 20px; border-top: none;">
        <h3 style="margin: 0; font-size: 1.1em; display: flex; align-items: center;">
          <i class="fa-solid fa-bolt" style="color: var(--electric); margin-right: 15px;"></i> Claridad
        </h3>
        <p style="font-size: 0.8em; margin: 5px 0 0 32px; color: var(--dark);">¿Entiendo el problema aunque no sea de su carrera?</p>
      </div>
      <div class="card" style="border-left: 5px solid var(--dark); padding: 20px; border-top: none;">
        <h3 style="margin: 0; font-size: 1.1em; display: flex; align-items: center;">
          <i class="fa-solid fa-code-branch" style="color: var(--dark); margin-right: 15px;"></i> Lógica Técnica
        </h3>
        <p style="font-size: 0.8em; margin: 5px 0 0 32px; color: var(--dark);">¿El uso de ramas, commits o condicionales tiene sentido real?</p>
      </div>
      <div class="card" style="border-left: 5px solid var(--violet); padding: 20px; border-top: none;">
        <h3 style="margin: 0; font-size: 1.1em; display: flex; align-items: center;">
          <i class="fa-solid fa-sack-dollar" style="color: var(--violet); margin-right: 15px;"></i> Viabilidad
        </h3>
        <p style="font-size: 0.8em; margin: 5px 0 0 32px; color: var(--dark);">¿Esta idea realmente ahorra dinero, tiempo o previene desastres?</p>
      </div>
    </div>
  </div>
</div>

---

<!-- Slide 7: Reflexión y "Bautizo" -->
<div class="center-layout">
  <div class="eyebrow" style="margin-bottom: 10px;">Retrospectiva de la Semana</div>
  <h2 style="margin-bottom: 30px;">De Usuarios a Operadores</h2>

  <div class="split" style="width: 100%; gap: 40px; margin-bottom: 25px;">
    <!-- El Pasado -->
    <div class="card" style="text-align: center; padding: 40px; border-top-color: #E63946;">
      <i class="fa-solid fa-user-shield" style="font-size: 3em; color: #E63946; margin-bottom: 20px;"></i>
      <h3 style="margin-bottom: 15px;">Día 1: Miedo a Romper</h3>
      <p style="font-size: 0.9em; margin: 0; color: #4B5563; line-height: 1.6;">
        Veían la pantalla negra como un lugar peligroso. El hardware dictaba las reglas y ustedes solo consumían software hecho por otros.
      </p>
    </div>    
    <!-- El Presente -->
    <div class="card violet" style="text-align: center; padding: 40px; background: rgba(123, 44, 191, 0.03);">
      <i class="fa-solid fa-user-astronaut" style="font-size: 3em; color: var(--violet); margin-bottom: 20px;"></i>
      <h3 style="margin-bottom: 15px; color: var(--violet);">Hoy: Control Absoluto</h3>
      <p style="font-size: 0.9em; margin: 0; color: #4B5563; line-height: 1.6;">
        Entienden la lógica condicional, el trabajo paralelo y la automatización. <b>La máquina ahora trabaja para ustedes.</b>
      </p>
    </div>
  </div>
</div>

---

<!-- Slide 8: Cierre y Recursos -->
<div class="center-layout">
  <div style="background: var(--white); padding: 50px 60px; border-radius: 16px; box-shadow: 0 20px 40px rgba(0,210,252,0.15); border: 2px solid var(--electric); max-width: 850px; text-align: center; width: 100%;">    
    <h2 style="color: var(--dark); font-size: 2.2em; line-height: 1.2; margin: 0 0 10px 0;">
      ¡Misión Cumplida!
    </h2>
    <p style="font-size: 1.1em; color: var(--electric); font-weight: bold; margin-bottom: 30px;">
      Semana Tec // Herramientas Computacionales
    </p>
    <div class="split" style="gap: 30px; align-items: center; text-align: left;">
      <div style="flex: 1; border-right: 2px dashed #E5E7EB; padding-right: 30px;">
        <p style="font-size: 0.9em; color: #4B5563; margin: 0; line-height: 1.6;">
          "La tecnología no pertenece solo a los ingenieros de software. Pertenece a todo aquel que se atreva a usarla para transformar su entorno."<br><br>
          <b>Gracias por su esfuerzo, resiliencia y creatividad.</b>
        </p>
      </div>
      <div style="flex: 0.6; text-align: center; display: flex; flex-direction: column; align-items: center;">
        <div style="background: var(--light); padding: 15px; border-radius: 12px; margin-bottom: 10px;">
          <i class="fa-solid fa-qrcode" style="font-size: 6em; color: var(--dark);"></i>
        </div>
        <code style="font-size: 0.7em;">github.com/munoz-classes</code>
      </div>
    </div>
  </div>
</div>