---
marp: true
theme: default
html: true
paginate: true
footer: 'Profesor Alison Muñoz Capote, Herramientas Computacionales, Tecnológico de Monterrey'
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

  /* Layouts */
  .center-layout { text-align: center; display: flex; flex-direction: column; align-items: center; justify-content: center; height: 100%; }
  .split { display: grid; grid-template-columns: 1fr 1fr; gap: 50px; align-items: center; }
  .grid-3 { display: grid; grid-template-columns: repeat(3, 1fr); gap: 20px; }
  
  .tech-icon { font-size: 2em; color: var(--violet); margin-bottom: 15px; }
---

<!-- Slide 1: Título y Portada -->
<div style="position: absolute; top: 40px; right: 80px;">
  <img src="tec.jpg" width="160" alt="Logo Tec de Monterrey">
</div>
<div class="split">
  <div>
    <div class="eyebrow">Día 1 // Orígenes y Comandos</div>
    <h1>El Arte de la<br>Programación en Unix</h1>
    <p>Profesor Alison Muñoz Capote</p>
  </div>
  <div class="center-layout">
    <img src="https://images.unsplash.com/photo-1629654297299-c8506221ca97?auto=format&fit=crop&w=600&q=80" width="100%" style="border-radius: 12px; box-shadow: 0 10px 30px rgba(0,210,252,0.15);" alt="Consola Cyber-Academy">
  </div>
</div>

---

<!-- Slide 2: Temario (Hoja de Ruta de Winston) -->
<div class="eyebrow">Hoja de Ruta</div>
<h2>Mapa de la Sesión</h2>

<div class="card" style="border-top-color: var(--dark);">
  <ul style="list-style: none; padding: 0; line-height: 2.2; font-size: 1.2em; color: var(--dark);">
    <li><i class="fa-solid fa-terminal" style="color: var(--electric); width: 40px;"></i> <b>1. La Promesa:</b> Tomar el control del sistema.</li>
    <li><i class="fa-solid fa-code-branch" style="color: var(--violet); width: 40px;"></i> <b>2. Génesis:</b> La filosofía de Unix.</li>
    <li><i class="fa-solid fa-microchip" style="color: var(--electric); width: 40px;"></i> <b>3. Arquitectura:</b> Usuario, Shell y Kernel.</li>
    <li><i class="fa-solid fa-folder-tree" style="color: var(--violet); width: 40px;"></i> <b>4. Navegación:</b> Comandos de exploración.</li>
    <li><i class="fa-solid fa-gamepad" style="color: var(--electric); width: 40px;"></i> <b>5. El Reto:</b> Escape Room Forense.</li>
  </ul>
</div>

---

<!-- Slide 3: La Promesa de Winston -->
<div class="center-layout">
  <div style="background: var(--white); padding: 60px; border-radius: 16px; box-shadow: 0 20px 40px rgba(123,44,191,0.1); border: 2px solid var(--violet); max-width: 800px;">
    <i class="fa-solid fa-unlock-keyhole" style="font-size: 3em; color: var(--electric); margin-bottom: 20px;"></i>
    <h2 style="color: var(--dark); font-size: 1.8em; line-height: 1.4; margin: 0;">
      Hoy perderán el miedo a la Terminal y transmutarán de usuarios pasivos a operadores absolutos del sistema.
    </h2>
  </div>
</div>

---

<!-- Slide 3.0: Línea de Tiempo Histórica -->
<div class="center-layout">
  <div class="eyebrow">Cronología</div>
  <h2 style="margin-bottom: 60px;">La Evolución del Control</h2>

  <!-- Contenedor de la línea de tiempo -->
  <div style="position: relative; width: 100%; display: flex; justify-content: space-between; padding: 0 20px;">    
    <!-- Línea conectora con gradiente Cyber-Academy -->
    <div style="position: absolute; top: 40px; left: 5%; right: 5%; height: 4px; background: linear-gradient(90deg, var(--electric), var(--violet)); z-index: 0; border-radius: 2px;"></div>
    <!-- Nodo 1: 1950s -->
    <div style="position: relative; z-index: 2; text-align: center; width: 22%;">
      <div style="width: 80px; height: 80px; background: var(--dark); border-radius: 50%; display: flex; align-items: center; justify-content: center; margin: 0 auto 20px auto; border: 4px solid var(--light); box-shadow: 0 0 20px rgba(0,210,252,0.4);">
        <i class="fa-solid fa-server" style="color: var(--electric); font-size: 1.5em;"></i>
      </div>
      <h3 style="margin-bottom: 5px; font-size: 1.1em;">1950s</h3>
      <p style="font-size: 0.85em; color: var(--dark); font-weight: bold; margin: 0;">Hardware Tirano</p>
      <p style="font-size: 0.7em; margin-top: 5px; line-height: 1.3;">Dependencia<br>absoluta.</p>
    </div>
    <!-- Nodo 2: 1969 -->
    <div style="position: relative; z-index: 2; text-align: center; width: 22%;">
      <div style="width: 80px; height: 80px; background: var(--dark); border-radius: 50%; display: flex; align-items: center; justify-content: center; margin: 0 auto 20px auto; border: 4px solid var(--light); box-shadow: 0 0 20px rgba(123,44,191,0.4);">
        <i class="fa-solid fa-layer-group" style="color: var(--violet); font-size: 1.5em;"></i>
      </div>
      <h3 style="margin-bottom: 5px; font-size: 1.1em;">1969</h3>
      <p style="font-size: 0.85em; color: var(--dark); font-weight: bold; margin: 0;">Nace Unix</p>
      <p style="font-size: 0.7em; margin-top: 5px; line-height: 1.3;">Estandarización<br>modular.</p>
    </div>
    <!-- Nodo 3: 1983 -->
    <div style="position: relative; z-index: 2; text-align: center; width: 22%;">
      <div style="width: 80px; height: 80px; background: var(--dark); border-radius: 50%; display: flex; align-items: center; justify-content: center; margin: 0 auto 20px auto; border: 4px solid var(--light); box-shadow: 0 0 20px rgba(0,210,252,0.4);">
        <i class="fa-solid fa-circle-nodes" style="color: var(--electric); font-size: 1.5em;"></i>
      </div>
      <h3 style="margin-bottom: 5px; font-size: 1.1em;">1983</h3>
      <p style="font-size: 0.85em; color: var(--dark); font-weight: bold; margin: 0;">Proyecto GNU</p>
      <p style="font-size: 0.7em; margin-top: 5px; line-height: 1.3;">Ecosistema libre<br>sin núcleo.</p>
    </div>
    <!-- Nodo 4: 1991 -->
    <div style="position: relative; z-index: 2; text-align: center; width: 22%;">
      <div style="width: 80px; height: 80px; background: var(--dark); border-radius: 50%; display: flex; align-items: center; justify-content: center; margin: 0 auto 20px auto; border: 4px solid var(--light); box-shadow: 0 0 20px rgba(123,44,191,0.4);">
        <i class="fa-brands fa-linux" style="color: var(--violet); font-size: 1.5em;"></i>
      </div>
      <h3 style="margin-bottom: 5px; font-size: 1.1em;">1991</h3>
      <p style="font-size: 0.85em; color: var(--dark); font-weight: bold; margin: 0;">Nace Linux</p>
      <p style="font-size: 0.7em; margin-top: 5px; line-height: 1.3;">El motor<br>pragmático.</p>
    </div>
  </div>
</div>


---

<!-- Slide 3.1: El Problema Original -->
<div class="center-layout">
  <div class="eyebrow">La Era Pre-Unix (1950s - 1960s)</div>
  <h2 style="margin-bottom: 30px;">La Tiranía del Hardware</h2>

  <div class="split" style="width: 100%; gap: 40px; align-items: center;">
    <div style="flex: 1; text-align: center;">
      <!-- Gráfico Generado: Hardware Tirano en estilo Cyber-Academy -->
      <img src="tirania.jpeg" style="width: 100%; max-width: 400px; border-radius: 12px; box-shadow: 0 10px 30px rgba(123, 44, 191, 0.15); border: 2px solid var(--violet);" alt="Tiranía del Hardware">
    </div>
    <div style="flex: 1; display: flex; flex-direction: column; gap: 20px; text-align: left;">
      <div class="card" style="border-left: 5px solid var(--dark); padding: 20px;">
        <h3 style="margin: 0; font-size: 1.1em; display: flex; align-items: center;">
          <i class="fa-solid fa-link tech-icon" style="color: var(--dark); font-size: 1.2em; margin-right: 15px; margin-bottom: 0;"></i> 
          1 Máquina = 1 Código
        </h3>
      </div>
      <div class="card" style="border-left: 5px solid var(--electric); padding: 20px;">
        <h3 style="margin: 0; font-size: 1.1em; display: flex; align-items: center;">
          <i class="fa-solid fa-user-slash tech-icon" style="color: var(--electric); font-size: 1.2em; margin-right: 15px; margin-bottom: 0;"></i> 
          Usuario Único y Lento
        </h3>
      </div>      
      <div class="card violet" style="padding: 20px; background: rgba(123, 44, 191, 0.03);">
        <p style="font-size: 0.85em; margin: 0; color: var(--violet); line-height: 1.5; display: flex; align-items: center;">
          <i class="fa-solid fa-lightbulb" style="font-size: 1.5em; margin-right: 15px;"></i>
          La dependencia absoluta del hardware estanca la innovación y evita la escalabilidad.
        </p>
      </div>
    </div>
  </div>
</div>

---

<!-- Slide 3.2: El Nacimiento de Unix -->
<div class="center-layout">
  <div class="eyebrow" style="margin-bottom: 5px;">1969 • Bell Labs</div>
  <h2 style="margin-bottom: 5px;">Unix: El Gran Estandarizador</h2>
  <p style="font-size: 0.9em; color: var(--dark); margin-top: 0; margin-bottom: 30px; opacity: 0.8;">
    Arquitectura diseñada por <b>Ken Thompson</b> y <b>Dennis Ritchie </b> en AT&T Bell Labs.
  </p>

  <div class="split" style="width: 100%; gap: 40px; align-items: center;">
    <div style="flex: 1; display: flex; flex-direction: column; gap: 20px; text-align: left;">
      <div class="card" style="border-left: 5px solid var(--electric); padding: 20px;">
        <h3 style="margin: 0; font-size: 1.1em; display: flex; align-items: center;">
          <i class="fa-solid fa-layer-group tech-icon" style="color: var(--electric); font-size: 1.2em; margin-right: 15px; margin-bottom: 0;"></i> 
          Filosofía Modular
        </h3>
      </div>      
      <div class="card" style="border-left: 5px solid var(--dark); padding: 20px;">
        <h3 style="margin: 0; font-size: 1.1em; display: flex; align-items: center;">
          <i class="fa-solid fa-c tech-icon" style="color: var(--dark); font-size: 1.2em; margin-right: 15px; margin-bottom: 0;"></i> 
          Lenguaje C = Portabilidad
        </h3>
      </div>      
      <div class="card violet" style="padding: 20px; background: rgba(123, 44, 191, 0.03);">
        <p style="font-size: 0.85em; margin: 0; color: var(--violet); line-height: 1.5; display: flex; align-items: center;">
          <i class="fa-solid fa-lightbulb" style="font-size: 1.5em; margin-right: 15px;"></i>
          Las herramientas pequeñas y conectables superan a los sistemas monolíticos complejos.
        </p>
      </div>
    </div>   
    <div style="flex: 1; text-align: center;">
      <!-- Imagen de contexto: Nodos y hardware modular con filtro Cyber-Academy aplicado por CSS -->
      <img src="https://images.unsplash.com/photo-1518770660439-4636190af475?auto=format&fit=crop&w=600&q=80" style="width: 100%; max-width: 400px; border-radius: 12px; box-shadow: 0 10px 30px rgba(0, 210, 252, 0.15); border: 2px solid var(--electric); filter: grayscale(30%) sepia(20%) hue-rotate(180deg) brightness(95%);" alt="Red Modular Unix">
    </div>
  </div>
</div>

---

<!-- Slide 3.3: GNU y la estructura incompleta -->
<div class="center-layout">
  <div class="eyebrow" style="margin-bottom: 5px;">1983 • Proyecto GNU</div>
  <h2 style="margin-bottom: 5px;">La Filosofía y el Núcleo Vacío</h2>
  <p style="font-size: 0.9em; color: var(--dark); margin-top: 0; margin-bottom: 30px; opacity: 0.8;">
    <b>Richard Stallman</b> inicia el movimiento del Software Libre.
  </p>

  <div class="split" style="width: 100%; gap: 40px; align-items: center;">
    <div style="flex: 1.2; text-align: center;">
      <!-- Gráfico Generado: Capas de GNU con Kernel Faltante -->
      <img src="circle.jpeg" style="width: 100%; max-width: 450px; border-radius: 12px; box-shadow: 0 10px 35px rgba(123, 44, 191, 0.2); border: 2px solid var(--violet);" alt="Anillos de GNU - Falta el Kernel">
    </div>
    <div style="flex: 1; display: flex; flex-direction: column; gap: 20px; text-align: left;">     
      <div class="card" style="border-left: 5px solid var(--electric); padding: 20px;">
        <h3 style="margin: 0; font-size: 1.1em; display: flex; align-items: center;">
          <i class="fa-solid fa-circle-nodes tech-icon" style="color: var(--electric); font-size: 1.2em; margin-right: 15px; margin-bottom: 0;"></i> 
          Ecosistema Listo
        </h3>
        <p style="font-size: 0.85em; margin: 5px 0 0 40px; color: var(--dark);">bash, GCC y herramientas terminadas.</p>
      </div>      
      <div class="card" style="border-left: 5px solid #E63946; padding: 20px;">
        <h3 style="margin: 0; font-size: 1.1em; color: #E63946; display: flex; align-items: center;">
          <i class="fa-solid fa-triangle-exclamation tech-icon" style="color: #E63946; font-size: 1.2em; margin-right: 15px; margin-bottom: 0;"></i> 
          Kernel Ausente
        </h3>
        <p style="font-size: 0.85em; margin: 5px 0 0 40px; color: var(--dark);">Sin motor central, nada funciona.</p>
      </div>      
      <div class="card violet" style="padding: 20px; background: rgba(123, 44, 191, 0.03);">
        <p style="font-size: 0.85em; margin: 0; color: var(--violet); line-height: 1.4; display: flex; align-items: center;">
          <i class="fa-solid fa-lightbulb" style="font-size: 1.5em; margin-right: 15px;"></i>
          <span><b></b> La ideología exige ejecución técnica.</span>
        </p>
      </div>
    </div>
  </div>
</div>

---

<!-- Slide 3.3.5: El Enlace Transatlántico -->
<div class="center-layout">
  <div class="eyebrow" style="margin-bottom: 5px;">1991 • La Tormenta Perfecta</div>
  <h2 style="margin-bottom: 30px;">La Pieza del Rompecabezas</h2>

  <div class="split" style="width: 100%; gap: 40px; align-items: center;">    
    <div style="flex: 1.2; text-align: center;">
      <!-- Imagen web estable con filtro Cyber-Academy aplicado directamente -->
      <img src="savetheworld.jpeg" style="width: 100%; max-width: 450px; border-radius: 12px; box-shadow: 0 10px 35px rgba(0, 210, 252, 0.2); border: 2px solid var(--electric); filter: hue-rotate(180deg) brightness(90%);" alt="Red Global">
    </div>
    <div style="flex: 1; display: flex; flex-direction: column; gap: 20px; text-align: left;">      
      <div class="card" style="border-left: 5px solid var(--dark); padding: 15px 20px;">
        <h3 style="margin: 0; font-size: 1.1em; display: flex; align-items: center;">
          <i class="fa-solid fa-graduation-cap tech-icon" style="color: var(--dark); font-size: 1.1em; margin-right: 15px; margin-bottom: 0;"></i> 
          Proyecto Personal
        </h3>
        <p style="font-size: 0.85em; margin: 3px 0 0 35px; color: var(--dark);">Linus Torvalds (Finlandia) crea Linux por diversión.</p>
      </div>
      <div class="card" style="border-left: 5px solid var(--electric); padding: 15px 20px;">
        <h3 style="margin: 0; font-size: 1.1em; display: flex; align-items: center;">
          <i class="fa-solid fa-code-branch tech-icon" style="color: var(--electric); font-size: 1.1em; margin-right: 15px; margin-bottom: 0;"></i> 
          Epicentro Europeo
        </h3>
        <p style="font-size: 0.85em; margin: 3px 0 0 35px; color: var(--dark);">Inspirado en MINIX (Holanda), para usarse en GNU (EEUU).</p>
      </div>      
      <div class="card violet" style="padding: 15px 20px; background: rgba(123, 44, 191, 0.03);">
        <p style="font-size: 0.85em; margin: 0; color: var(--violet); line-height: 1.4; display: flex; align-items: center;">
          <i class="fa-solid fa-lightbulb" style="font-size: 1.3em; margin-right: 12px;"></i>
          <span><b>&nbsp;</b> Una inquietud personal puede resolver un problema global.</span>
        </p>
      </div>
    </div>
  </div>
</div>

---

<!-- Slide 3.4: Linux y la disputa del diseño -->
<div class="center-layout">
  <div class="eyebrow" style="margin-bottom: 5px;">1991 • El Debate Arquitectónico</div>
  <h2 style="margin-bottom: 30px;">Minix vs. Linux</h2>

  <div class="split" style="width: 100%; gap: 40px; margin-bottom: 25px; align-items: center;">
    <div style="flex: 1; display: flex; flex-direction: column; gap: 20px;">      
      <div class="card" style="border-left: 5px solid var(--dark); border-top: none; padding: 20px;">
        <h3 style="margin: 0; font-size: 1.1em; display: flex; align-items: center;">
          <i class="fa-solid fa-cubes tech-icon" style="color: var(--dark); font-size: 1.1em; margin-right: 15px; margin-bottom: 0;"></i> 
          Microkernel (Minix)
        </h3>
        <p style="font-size: 0.85em; margin: 5px 0 0 35px; color: var(--dark);">Perfecto en teoría. Lento y complejo en la práctica.</p>
      </div>      
      <div class="card" style="border-left: 5px solid var(--violet); border-top: none; padding: 20px;">
        <h3 style="margin: 0; font-size: 1.1em; color: var(--violet); display: flex; align-items: center;">
          <i class="fa-solid fa-cube tech-icon" style="color: var(--violet); font-size: 1.1em; margin-right: 15px; margin-bottom: 0;"></i> 
          Monolítico (Linux)
        </h3>
        <p style="font-size: 0.85em; margin: 5px 0 0 35px; color: var(--dark);">Pragmático y rápido. Adoptado masivamente.</p>
      </div>      
    </div>    
    <div style="flex: 1; text-align: center;">
      <!-- Imagen web estable (abstracta tec/bloques) con filtro Cyber-Academy aplicado -->
      <img src="https://images.unsplash.com/photo-1550751827-4bd374c3f58b?auto=format&fit=crop&w=600&q=80" style="width: 100%; max-width: 450px; border-radius: 12px; box-shadow: 0 10px 30px rgba(0,210,252,0.15); border: 2px solid var(--electric); filter: hue-rotate(190deg) brightness(85%) contrast(110%);" alt="Arquitectura de Sistemas">
    </div>
  </div>

  <!-- Tarjeta de cierre destacada (fondo suave translúcido) -->
  <div class="card" style="background: linear-gradient(90deg, rgba(0,210,252,0.05), rgba(123,44,191,0.05)); border: 1px solid rgba(123,44,191,0.15); width: 100%; padding: 20px; box-sizing: border-box; text-align: center; box-shadow: none;">
    <p style="font-size: 0.85em; margin: 0; color: var(--dark); display: flex; align-items: center; justify-content: center; gap: 10px;">
      <i class="fa-solid fa-bolt" style="color: var(--electric);"></i>
      <span>Despachar código que resuelve un problema hoy, siempre vence a la perfección teórica del mañana.</span>
    </p>
  </div>
</div>

---

<!-- Slide 4: Origen y Filosofía -->
<div class="center-layout">
  <div class="eyebrow" style="margin-bottom: 5px;">1969 • Bell Labs</div>
  <h2 style="margin-bottom: 15px;">La Filosofía Unix</h2>
  <p style="font-size: 0.9em; margin-bottom: 40px; text-align: center; opacity: 0.8; max-width: 700px;">
    Herramientas pequeñas y elegantes conectadas para resolver problemas complejos.
  </p>
  <div class="grid-3" style="width: 100%;">    
    <!-- Tarjeta 1: Multitarea -->
    <div class="card" style="border-left: 5px solid var(--dark); border-top: none; padding: 25px; text-align: center;">
      <i class="fa-solid fa-layer-group" style="color: var(--dark); font-size: 2.5em; margin-bottom: 15px;"></i>
      <h3 style="margin-bottom: 10px;">Multitarea</h3>
      <p style="font-size: 0.8em; color: var(--dark); margin: 0; line-height: 1.4;">Procesos paralelos fluidos y constantes.</p>
    </div>
    <!-- Tarjeta 2: Multiusuario -->
    <div class="card" style="border-left: 5px solid var(--electric); border-top: none; padding: 25px; text-align: center;">
      <i class="fa-solid fa-users-gear" style="color: var(--electric); font-size: 2.5em; margin-bottom: 15px;"></i>
      <h3 style="margin-bottom: 10px; color: var(--electric);">Multiusuario</h3>
      <p style="font-size: 0.8em; color: var(--dark); margin: 0; line-height: 1.4;">Colaboración concurrente sin colisiones.</p>
    </div>
    <!-- Tarjeta 3: Simplicidad -->
    <div class="card" style="border-left: 5px solid var(--violet); border-top: none; padding: 25px; text-align: center; background: rgba(123, 44, 191, 0.03);">
      <i class="fa-solid fa-cube" style="color: var(--violet); font-size: 2.5em; margin-bottom: 15px;"></i>
      <h3 style="margin-bottom: 10px; color: var(--violet);">Simplicidad</h3>
      <p style="font-size: 0.8em; color: var(--dark); margin: 0; line-height: 1.4;">Haz una sola cosa, pero hazla excelente.</p>
    </div>

  </div>
</div>

---

<!-- Slide 5: Arquitectura (Menos texto, más visual) -->
<div class="center-layout">
  <div class="eyebrow">Anatomía del Sistema</div>
  <h2 style="margin-bottom: 15px;">Cadena de Mando</h2>
  <p style="margin-bottom: 30px; text-align: center; max-width: 700px; font-size: 0.9em;">
    Cómo viajan las instrucciones desde la mente humana hasta los circuitos de la máquina.
  </p>

  <div class="grid-3" style="width: 100%;">   
    <div class="card center-layout" style="padding: 20px; border-top-color: var(--dark);">
      <i class="fa-solid fa-user tech-icon" style="color: var(--dark); margin-bottom: 10px;"></i>
      <h3 style="margin-bottom: 10px;">1. Usuario</h3>
      <p style="font-size: 0.8em; text-align: center; margin: 0; line-height: 1.4;">El origen de la intención. Escribe los comandos en texto legible.</p>
    </div>
    <div class="card center-layout" style="padding: 20px; border-top-color: var(--electric);">
      <i class="fa-solid fa-terminal tech-icon" style="color: var(--electric); margin-bottom: 10px;"></i>
      <h3 style="margin-bottom: 10px; color: var(--electric);">2. Shell</h3>
      <p style="font-size: 0.8em; text-align: center; margin: 0; line-height: 1.4;">El traductor. Interpreta el texto y lo prepara para el sistema operativo.</p>
    </div>
    <div class="card violet center-layout" style="padding: 20px;">
      <i class="fa-solid fa-microchip tech-icon" style="color: var(--violet); margin-bottom: 10px;"></i>
      <h3 style="margin-bottom: 10px; color: var(--violet);">3. Kernel</h3>
      <p style="font-size: 0.8em; text-align: center; margin: 0; line-height: 1.4;">El núcleo. Coordina y ejecuta físicamente las acciones en el hardware.</p>
    </div>

  </div>
</div>

---

<!-- Slide 6: Ubicación y Navegación Básica -->
<div class="center-layout">
  <div class="eyebrow">GPS del Sistema</div>
  <h2 style="margin-bottom: 15px;">Navegación Táctica</h2>
  <p style="margin-bottom: 30px; text-align: center; max-width: 700px; font-size: 0.9em;">
    Comandos esenciales para moverse por las entrañas del ordenador sin interfaz gráfica.
  </p>
  
  <div class="grid-3" style="width: 100%;">
    <div class="card center-layout" style="padding: 20px; border-top-color: var(--dark);">
      <i class="fa-solid fa-location-dot tech-icon" style="color: var(--dark); margin-bottom: 10px;"></i>
      <div class="cmd" style="margin-bottom: 10px; font-size: 1.1em;">pwd</div>
      <p style="font-size: 0.8em; text-align: center; margin: 0; line-height: 1.4;">¿Dónde estoy? Imprime la ruta exacta del directorio actual.</p>
    </div>   
    <div class="card violet center-layout" style="padding: 20px;">
      <i class="fa-solid fa-list tech-icon" style="color: var(--violet); margin-bottom: 10px;"></i>
      <div class="cmd" style="margin-bottom: 10px; font-size: 1.1em;">ls -la</div>
      <p style="font-size: 0.8em; text-align: center; margin: 0; line-height: 1.4;">Lista el contenido, revelando archivos ocultos y permisos.</p>
    </div>   
    <div class="card center-layout" style="padding: 20px; border-top-color: var(--electric);">
      <i class="fa-solid fa-turn-up tech-icon" style="color: var(--electric); margin-bottom: 10px;"></i>
      <div class="cmd" style="margin-bottom: 10px; font-size: 1.1em;">cd ..</div>
      <p style="font-size: 0.8em; text-align: center; margin: 0; line-height: 1.4;">Sube un nivel en la jerarquía de carpetas del sistema.</p>
    </div>
  </div>
</div>

---

<!-- Slide 7: Herramientas Forenses -->
<div class="center-layout">
  <div class="eyebrow">Investigación</div>
  <h2 style="margin-bottom: 15px;">Búsqueda y Análisis</h2>
  <p style="margin-bottom: 30px; text-align: center; max-width: 700px; font-size: 0.9em;">
    Herramientas clave para encontrar agujas en pajares digitales.
  </p>

  <div class="split" style="width: 100%; gap: 30px;">
    <div class="card center-layout" style="padding: 20px; border-top-color: var(--electric);">
      <i class="fa-solid fa-magnifying-glass-chart tech-icon" style="color: var(--electric); margin-bottom: 10px;"></i>
      <div class="cmd" style="margin-bottom: 10px; font-size: 1.1em;">grep</div>
      <h3 style="margin-bottom: 10px;">Buscar en Texto</h3>
      <p style="font-size: 0.8em; text-align: center; margin: 0; line-height: 1.4;">Encuentra cadenas de palabras específicas dentro del contenido de un archivo.</p>
    </div>
    <div class="card violet center-layout" style="padding: 20px;">
      <i class="fa-solid fa-box-open tech-icon" style="color: var(--violet); margin-bottom: 10px;"></i>
      <div class="cmd" style="margin-bottom: 10px; font-size: 1.1em;">find</div>
      <h3 style="margin-bottom: 10px; color: var(--violet);">Buscar en Sistema</h3>
      <p style="font-size: 0.8em; text-align: center; margin: 0; line-height: 1.4;">Localiza archivos perdidos, ocultos o saboteados en estructuras de carpetas enteras.</p>
    </div>
  </div>
</div>

---

<!-- Slide 8: El Reto -->
<div class="center-layout">
  <div class="eyebrow">Simulación Práctica</div>
  <h2 style="margin-bottom: 15px;">Escape Room Forense</h2>
  <p style="margin-bottom: 30px; text-align: center; max-width: 700px; font-size: 0.9em;">
    Aplicación iterativa del conocimiento. Utilicen las herramientas aprendidas para resolver el incidente en el servidor.
  </p>
  
  <div class="grid-3" style="width: 100%;">
    <div class="card center-layout" style="padding: 20px; border-top-color: var(--electric);">
      <i class="fa-solid fa-magnifying-glass-location tech-icon" style="color: var(--electric); margin-bottom: 10px;"></i>
      <h3 style="margin-bottom: 10px; color: var(--electric);">1. Localizar</h3>
      <p style="font-size: 0.8em; text-align: center; margin: 0; line-height: 1.4;">Usa <b>find</b> para encontrar el archivo de logs oculto en el sistema.</p>
    </div>
    <div class="card violet center-layout" style="padding: 20px;">
      <i class="fa-solid fa-shield-halved tech-icon" style="color: var(--violet); margin-bottom: 10px;"></i>
      <h3 style="margin-bottom: 10px; color: var(--violet);">2. Auditar</h3>
      <p style="font-size: 0.8em; text-align: center; margin: 0; line-height: 1.4;">Usa <b>grep</b> para hallar la palabra "SABOTAJE" dentro de los registros.</p>
    </div>  
    <div class="card center-layout" style="padding: 20px; border-top-color: var(--dark);">
      <i class="fa-solid fa-terminal tech-icon" style="color: var(--dark); margin-bottom: 10px;"></i>
      <h3 style="margin-bottom: 10px;">3. Ejecutar</h3>
      <p style="font-size: 0.8em; text-align: center; margin: 0; line-height: 1.4;">Repara y compila el código C original para restablecer la red.</p>
    </div>
  </div>
</div>