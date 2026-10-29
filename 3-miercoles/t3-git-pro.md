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

  /* Estilos Base Premium */
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

  .card {
    background: var(--white);
    padding: 35px;
    border-radius: 12px;
    box-shadow: 0 10px 30px rgba(26, 37, 44, 0.08);
    border-top: 4px solid var(--electric);
  }
  .card.violet { border-top-color: var(--violet); }
  .card.danger { border-top-color: #E63946; }

  /* Layouts */
  .center-layout { text-align: center; display: flex; flex-direction: column; align-items: center; justify-content: center; height: 100%; }
  .split { display: grid; grid-template-columns: 1fr 1fr; gap: 50px; align-items: center; }
  .grid-4 { display: grid; grid-template-columns: repeat(4, 1fr); gap: 15px; text-align: center; }
  
  .tech-icon { font-size: 2em; color: var(--violet); margin-bottom: 15px; }
  .svg-icon { width: 50px; height: 50px; margin-bottom: 15px; }
---

<!-- Slide 1: Título y Portada -->
<div style="position: absolute; top: 40px; right: 80px;">
  <img src="tec.jpg" width="160" alt="Logo Tec de Monterrey">
</div>
<div class="split">
  <div>
    <div class="eyebrow">Día 3 // La Máquina del Tiempo</div>
    <h1>Git y GitHub:<br>El Fin del Caos</h1>
    <p>Profesor Alison Muñoz Capote</p>
  </div>
  <div class="center-layout">
    <img src="https://images.unsplash.com/photo-1555066931-4365d14bab8c?auto=format&fit=crop&w=600&q=80" width="100%" style="border-radius: 12px; box-shadow: 0 10px 30px rgba(123,44,191,0.15);" alt="Trabajo Colaborativo">
  </div>
</div>

---

<!-- Slide 2: La Promesa -->
<div class="center-layout">
  <div style="background: var(--white); padding: 60px; border-radius: 16px; box-shadow: 0 20px 40px rgba(123,44,191,0.1); border: 2px solid var(--violet); max-width: 850px;">
    <div style="display: flex; justify-content: center; margin-bottom: 25px;">
      <svg width="70" height="70" viewBox="0 0 24 24" fill="none" stroke="var(--electric)" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"><circle cx="12" cy="12" r="10"></circle><polyline points="12 6 12 12 16 14"></polyline></svg>
    </div>
    <h2 style="color: var(--dark); font-size: 1.8em; line-height: 1.4; margin: 0;">
      Hoy perderán el miedo a equivocarse.<br><br>
      Aprenderán a <span style="color: var(--violet);">viajar en el tiempo</span> en sus proyectos y a trabajar en paralelo sin destruir el avance de su equipo.
    </h2>
  </div>
</div>

---

<!-- Slide 13: Anécdota Toy Story (El Desastre) -->
<div class="center-layout">
  <div class="eyebrow">1998 • Pixar Animation Studios</div>
  <h2 style="margin-bottom: 30px;">El Terrorífico Caso de Toy Story 2</h2>

  <div class="split" style="width: 100%; gap: 40px; align-items: stretch;">
    <div class="card danger" style="padding: 30px; text-align: left; display: flex; flex-direction: column; justify-content: center; border-top-color: #E63946;">
      <h3 style="color: #E63946; margin-bottom: 15px; font-size: 1.3em;">
        <i class="fa-solid fa-server" style="margin-right: 10px;"></i> El Comando Fatal
      </h3>
      <p style="font-size: 0.9em; color: var(--dark); line-height: 1.6; margin: 0;">
        Un animador ejecutó por accidente <code>rm -r -f *</code> en el servidor principal. Frente a los ojos del equipo, los archivos, escenarios y personajes comenzaron a desaparecer.<br><br>
        <b>Resultado:</b> El 90% de la película fue borrada. Las cintas de respaldo llevaban un mes fallando sin que nadie lo notara.
      </p>
    </div>    
    <div style="display: flex; align-items: center; justify-content: center;">
      <svg width="150" height="150" viewBox="0 0 24 24" fill="none" stroke="#E63946" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round" style="filter: drop-shadow(0 10px 20px rgba(230,57,70,0.2));">
        <rect x="2" y="2" width="20" height="8" rx="2" ry="2"></rect>
        <rect x="2" y="14" width="20" height="8" rx="2" ry="2"></rect>
        <line x1="6" y1="6" x2="6.01" y2="6"></line>
        <line x1="6" y1="18" x2="6.01" y2="18"></line>
        <path d="M15 6l4 4-4 4M19 10H9" stroke="var(--dark)" opacity="0.3"></path>
        <circle cx="18" cy="18" r="3" fill="#E63946"></circle>
      </svg>
    </div>
  </div>
</div>

---

<!-- Slide 14: Anécdota Toy Story (La Solución Distribuida) -->
<div class="center-layout">
  <div class="eyebrow">El Valor de un Repositorio Distribuido</div>
  <h2 style="margin-bottom: 30px;">El Rescate a Domicilio</h2>

  <div class="card" style="border-top-color: var(--electric); padding: 40px; width: 100%; display: flex; gap: 40px; align-items: center;">
    <div style="flex-shrink: 0; background: rgba(0, 210, 252, 0.05); padding: 25px; border-radius: 16px;">
      <i class="fa-solid fa-laptop-house" style="font-size: 3.5em; color: var(--electric);"></i>
    </div>
    <div style="text-align: left;">
      <h3 style="margin-bottom: 15px; font-size: 1.4em;">El Clon Local de Galyn Susman</h3>
      <p style="font-size: 0.9em; margin-bottom: 20px; line-height: 1.6; color: #4B5563;">
        La directora técnica trabajaba desde casa por maternidad y tenía una máquina que copiaba los archivos del servidor periódicamente. Ella tenía un <b>clon completo e independiente</b> del multiverso en su propia computadora.
      </p>
      <div style="background: rgba(26, 37, 44, 0.03); border-left: 4px solid var(--violet); padding: 15px; border-radius: 4px;">
        <p style="font-size: 0.85em; margin: 0; color: var(--dark);">
          <b>Moraleja de Git:</b> Si el servidor central (GitHub) explota, cada miembro del equipo tiene una copia íntegra del proyecto en su Local Repo. Cualquiera puede restaurarlo en segundos usando <code>git clone</code>.
        </p>
      </div>
    </div>
  </div>
</div>

---

<!-- Slide 15: Anécdota Stephen King (El Borrador) -->
<div class="center-layout">
  <div class="eyebrow">1973 • El Proceso Creativo</div>
  <h2 style="margin-bottom: 30px;">La Papelera de Stephen King</h2>

  <div class="split" style="width: 100%; gap: 40px; align-items: stretch;">
    <div style="display: flex; align-items: center; justify-content: center;">
      <svg width="130" height="130" viewBox="0 0 24 24" fill="none" stroke="var(--dark)" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round" style="filter: drop-shadow(0 10px 20px rgba(26,37,44,0.1));">
        <path d="M3 6h18"></path>
        <path d="M19 6v14a2 2 0 0 1-2 2H7a2 2 0 0 1-2-2V6m3 0V4a2 2 0 0 1 2-2h4a2 2 0 0 1 2 2v2"></path>
        <line x1="10" y1="11" x2="10" y2="17"></line>
        <line x1="14" y1="11" x2="14" y2="17"></line>
      </svg>
    </div>
    <div class="card" style="border-top-color: var(--dark); padding: 30px; text-align: left; display: flex; flex-direction: column; justify-content: center;">
      <h3 style="color: var(--dark); margin-bottom: 15px; font-size: 1.3em;">
        <i class="fa-solid fa-trash-arrow-up" style="margin-right: 10px;"></i> El Borrador Rescatado
      </h3>
      <p style="font-size: 0.9em; color: #4B5563; line-height: 1.6; margin: 0;">
        Un joven escritor redactó las primeras páginas de una historia, sintió que no funcionaba, arrugó las hojas y las tiró a la basura.<br><br>
        Su esposa Tabitha sacó los papeles, limpió las cenizas y lo animó a seguir. Esa historia descartada era <b>Carrie</b>, la obra maestra que lanzó su carrera.
      </p>
    </div>
  </div>
</div>

---

<!-- Slide 16: Anécdota Stephen King (Git Branches) -->
<div class="center-layout">
  <div class="eyebrow">La Psicología del Commit</div>
  <h2 style="margin-bottom: 30px;">Git es tu "Tabitha"</h2>

  <div style="background: var(--white); padding: 50px; border-radius: 16px; box-shadow: 0 20px 40px rgba(123,44,191,0.1); border: 2px solid var(--violet); max-width: 850px; width: 100%;">
    <div style="display: flex; justify-content: center; margin-bottom: 25px;">
      <svg width="80" height="80" viewBox="0 0 24 24" fill="none" stroke="var(--violet)" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round">
        <path d="M6 3v12"></path>
        <circle cx="18" cy="9" r="3"></circle>
        <path d="M18 9a9 9 0 0 1-9 9"></path>
        <circle cx="6" cy="21" r="3"></circle>
        <circle cx="6" cy="3" r="3"></circle>
      </svg>
    </div>
    <h3 style="color: var(--violet); font-size: 1.6em; margin-bottom: 20px; text-align: center;">Nunca destruyan sus borradores</h3>
    <p style="font-size: 1em; color: #4B5563; margin: 0; line-height: 1.6; text-align: center;">
      En el trabajo intelectual, nuestro peor enemigo somos nosotros mismos. Con las ramas (<code>git branch</code>), pueden explorar ideas extrañas sin arruinar el documento oficial.<br><br>
      Si creen que es basura, <b>no la borren</b>; cambien de rama. Ese trabajo se queda congelado, esperando por si algún día descubren que en realidad era una idea brillante.
    </p>
  </div>
</div>


---

<!-- Slide 3: El Problema a Resolver (Enfoque Multidisciplinario) -->
<div class="center-layout">
  <div class="eyebrow">01. El Problema Original</div>
  <h2 style="margin-bottom: 40px;">La Tiranía de las Copias</h2>

  <div class="split" style="width: 100%; gap: 40px; align-items: stretch;">
    <div class="card danger" style="text-align: left; padding: 30px;">
      <h3 style="color: #E63946; margin-bottom: 25px; display: flex; align-items: center;">
        <i class="fa-solid fa-triangle-exclamation" style="margin-right: 15px;"></i> Sin Git
      </h3>
      <ul style="list-style: none; padding: 0; color: #4B5563; font-family: 'Fira Code', monospace; font-size: 0.85em; line-height: 2.2;">
        <li><i class="fa-solid fa-file-image" style="width: 30px;"></i> render_final.png</li>
        <li><i class="fa-solid fa-file-pen" style="width: 30px;"></i> plano_final_v2.dwg</li>
        <li><i class="fa-solid fa-file-pdf" style="width: 30px;"></i> plan_negocios_bueno.pdf</li>
        <li><i class="fa-solid fa-file-word" style="width: 30px;"></i> reporte_ESTE_SI_FINAL.docx</li>
      </ul>
    </div>    
    <div class="card violet" style="text-align: left; padding: 30px; background: rgba(123, 44, 191, 0.02);">
      <h3 style="color: var(--violet); margin-bottom: 25px; display: flex; align-items: center;">
        <i class="fa-solid fa-code-merge" style="margin-right: 15px;"></i> La Solución: Git
      </h3>
      <p style="color: var(--dark); font-size: 1.05em; line-height: 1.6; margin: 0;">
        Git no guarda copias enteras, rastrea <b>la evolución</b> de un solo proyecto.<br><br>
        <i class="fa-solid fa-check" style="color: var(--electric); margin-right: 10px;"></i> <b>Única fuente de verdad:</b> Un solo archivo.<br>
        <i class="fa-solid fa-check" style="color: var(--electric); margin-right: 10px;"></i> <b>Historial infinito:</b> Deshaz cualquier error.<br>
        <i class="fa-solid fa-check" style="color: var(--electric); margin-right: 10px;"></i> <b>Blindaje:</b> Nadie sobrescribe tu trabajo.
      </p>
    </div>
  </div>
</div>

---

<!-- Slide 4: Las 4 Zonas de Git -->
<div class="center-layout">
  <div class="eyebrow">02. El Ecosistema</div>
  <h2 style="margin-bottom: 40px;">Las 4 Zonas de Trabajo</h2>
  
  <div class="grid-4" style="width: 100%;">
    <div class="card" style="padding: 25px 20px; border-top-color: var(--dark); display: flex; flex-direction: column; align-items: center;">
      <svg class="svg-icon" viewBox="0 0 24 24" fill="none" stroke="var(--dark)" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"><rect x="3" y="3" width="18" height="18" rx="2" ry="2"></rect><line x1="9" y1="3" x2="9" y2="21"></line></svg>
      <h4 style="margin: 0 0 10px 0; color: var(--dark); font-size: 1.1em;">1. Working Dir</h4>
      <p style="font-size: 0.8em; margin: 0; line-height: 1.4;">Tu escritorio. Donde editas, escribes y creas día a día.</p>
    </div>    
    <div class="card" style="padding: 25px 20px; border-top-color: var(--electric); display: flex; flex-direction: column; align-items: center;">
      <svg class="svg-icon" viewBox="0 0 24 24" fill="none" stroke="var(--electric)" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"><path d="M14 2H6a2 2 0 0 0-2 2v16a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V8z"></path><polyline points="14 2 14 8 20 8"></polyline><line x1="12" y1="18" x2="12" y2="12"></line><line x1="9" y1="15" x2="15" y2="15"></line></svg>
      <h4 style="margin: 0 0 10px 0; color: var(--electric); font-size: 1.1em;">2. Staging Area</h4>
      <p style="font-size: 0.8em; margin: 0; line-height: 1.4;">La sala de preparación. Eliges qué avances vas a guardar.</p>
    </div>
    <div class="card violet" style="padding: 25px 20px; display: flex; flex-direction: column; align-items: center;">
      <svg class="svg-icon" viewBox="0 0 24 24" fill="none" stroke="var(--violet)" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"><rect x="2" y="2" width="20" height="8" rx="2" ry="2"></rect><rect x="2" y="14" width="20" height="8" rx="2" ry="2"></rect><line x1="6" y1="6" x2="6.01" y2="6"></line><line x1="6" y1="18" x2="6.01" y2="18"></line></svg>
      <h4 style="margin: 0 0 10px 0; color: var(--violet); font-size: 1.1em;">3. Local Repo</h4>
      <p style="font-size: 0.8em; margin: 0; line-height: 1.4;">La caja fuerte en tu PC. Tu historial blindado e inmutable.</p>
    </div>    
    <div class="card" style="padding: 25px 20px; background: var(--dark); border-top-color: var(--dark); display: flex; flex-direction: column; align-items: center;">
      <svg class="svg-icon" viewBox="0 0 24 24" fill="none" stroke="#FFFFFF" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"><path d="M9 19c-5 1.5-5-2.5-7-3m14 6v-3.87a3.37 3.37 0 0 0-.94-2.61c3.14-.35 6.44-1.54 6.44-7A5.44 5.44 0 0 0 20 4.77 5.07 5.07 0 0 0 19.91 1S18.73.65 16 2.48a13.38 13.38 0 0 0-7 0C6.27.65 5.09 1 5.09 1A5.07 5.07 0 0 0 5 4.77a5.44 5.44 0 0 0-1.5 3.78c0 5.42 3.3 6.61 6.44 7A3.37 3.37 0 0 0 9 18.13V22"></path></svg>
      <h4 style="margin: 0 0 10px 0; color: #FFFFFF; font-size: 1.1em;">4. Remote</h4>
      <p style="font-size: 0.8em; margin: 0; color: #A0AEC0; line-height: 1.4;">GitHub. La nube para sincronizar con tu equipo.</p>
    </div>
  </div>
</div>

---

<!-- Slide 5: Comandos de Tránsito -->
<div class="center-layout">
  <div class="eyebrow">03. Movimiento</div>
  <h2 style="margin-bottom: 40px;">Comandos de Tránsito</h2>

  <div class="split" style="width: 100%; gap: 40px;">
    <div class="card" style="border-top-color: var(--violet); padding: 30px;">
      <h3 style="color: var(--violet); margin-bottom: 25px; display: flex; align-items: center; justify-content: center;">
        <i class="fa-solid fa-hard-drive" style="margin-right: 15px;"></i> Tránsito Local
      </h3>
      <div style="text-align: left; padding: 0 20px;">
        <div style="margin-bottom: 20px;">
          <div class="cmd">git status</div>
          <p style="font-size: 0.85em; margin: 8px 0 0 0;">¿Qué cambió en mi escritorio?</p>
        </div>
        <div style="margin-bottom: 20px;">
          <div class="cmd">git add .</div>
          <p style="font-size: 0.85em; margin: 8px 0 0 0;">Mueve los cambios a la Sala de Preparación.</p>
        </div>
        <div>
          <div class="cmd">git commit -m</div>
          <p style="font-size: 0.85em; margin: 8px 0 0 0;">Toma la "foto" permanente en tu PC.</p>
        </div>
      </div>
    </div>    
    <div class="card" style="border-top-color: var(--electric); background: var(--dark); padding: 30px;">
      <h3 style="color: var(--electric); margin-bottom: 25px; display: flex; align-items: center; justify-content: center;">
        <i class="fa-solid fa-cloud-arrow-up" style="margin-right: 15px;"></i> Hacia la Nube
      </h3>
      <div style="text-align: left; padding: 0 20px;">
        <div style="margin-bottom: 30px;">
          <div class="cmd" style="background: var(--light); color: var(--dark);">git push</div>
          <p style="font-size: 0.85em; margin: 8px 0 0 0; color: #A0AEC0;">Sube tu historial blindado a GitHub.</p>
        </div>
        <div>
          <div class="cmd" style="background: var(--light); color: var(--dark);">git pull</div>
          <p style="font-size: 0.85em; margin: 8px 0 0 0; color: #A0AEC0;">Descarga y fusiona el trabajo de tu equipo.</p>
        </div>
      </div>
    </div>
  </div>
</div>

---

<!-- Slide 6: Ramas (Branches) -->
<div class="center-layout">
  <div class="eyebrow">04. Universos Paralelos</div>
  <h2 style="margin-bottom: 40px;">Ramas (Branches)</h2>
  <div class="card violet" style="width: 100%; display: flex; align-items: center; gap: 40px; padding: 40px;">
    <div style="flex-shrink: 0; background: rgba(123, 44, 191, 0.05); padding: 25px; border-radius: 16px;">
      <svg width="100" height="100" viewBox="0 0 24 24" fill="none" stroke="var(--violet)" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round">
        <circle cx="6" cy="3" r="3"></circle>
        <circle cx="6" cy="21" r="3"></circle>
        <circle cx="18" cy="9" r="3"></circle>
        <path d="M6 6v12"></path>
        <path d="M18 9a9 9 0 0 1-9 9"></path>
      </svg>
    </div>
    <div style="text-align: left;">
      <h3 style="margin-bottom: 15px; font-size: 1.4em;">Aislamiento para experimentar sin miedo.</h3>
      <p style="font-size: 0.9em; margin-bottom: 25px;">La rama <b>main</b> es sagrada (es el producto final). Crea una rama alterna para probar nuevas ideas, redactar borradores o ensayar diseños sin romper el proyecto principal.</p>      
      <div style="display: flex; gap: 15px;">
        <div class="cmd" style="font-size: 0.95em;">git branch nueva-idea</div>
        <div class="cmd" style="font-size: 0.95em; background: var(--violet); color: var(--white); box-shadow: none;">git checkout nueva-idea</div>
      </div>
    </div>
  </div>
</div>

---

<!-- Slide 7: El Reto (Merge Conflicts) -->
<div class="center-layout">
  <div class="eyebrow">05. Simulación Práctica</div>
  <h2 style="margin-bottom: 30px;">El Reto: Sabotaje Controlado</h2>
  <p style="margin-bottom: 30px; max-width: 800px; font-size: 0.9em; text-align: center;">
    Edición paralela del mismo archivo. Aprenderemos a resolver un <b>Merge Conflict</b> (cuando dos personas modifican la misma línea de forma simultánea).
  </p>

  <div class="split" style="width: 100%; gap: 40px; align-items: stretch;">
    <div class="card danger" style="text-align: left; padding: 30px; border-top-color: #E63946;">
      <h3 style="color: #E63946; margin-bottom: 20px; display: flex; align-items: center;">
        <i class="fa-solid fa-crosshairs" style="margin-right: 15px;"></i> Misión
      </h3>
      <ul style="color: #4B5563; font-size: 0.85em; line-height: 2; margin: 0; padding-left: 20px;">
        <li>Generar el conflicto intencionalmente.</li>
        <li>Identificar las marcas forenses de Git.</li>
        <li>Negociar la versión final y unificar.</li>
        <li>Borrar la sintaxis residual.</li>
      </ul>
    </div>    
    <div class="card" style="background: var(--dark); text-align: left; padding: 30px; display: flex; flex-direction: column; justify-content: center;">
      <div style="font-family: 'Fira Code', monospace; color: #E63946; font-size: 0.85em; line-height: 1.8;">
        <span style="color: #6B7280;">&lt;&lt;&lt;&lt;&lt;&lt;&lt; HEAD (Tu versión local)</span><br>
        <span style="color: var(--electric);">DISEÑO_ACTIVO = "Minimalista"</span><br>
        <span style="color: #6B7280;">=======</span><br>
        <span style="color: var(--violet);">DISEÑO_ACTIVO = "Cyberpunk"</span><br>
        <span style="color: #6B7280;">&gt;&gt;&gt;&gt;&gt;&gt;&gt; rama-sabotaje (Versión remota)</span>
      </div>
    </div>
  </div>
</div>

---

<!-- Slide 8: Valor Entregado -->
<div class="center-layout">
  <div style="background: var(--white); padding: 60px; border-radius: 16px; box-shadow: 0 20px 40px rgba(0,210,252,0.1); border: 2px solid var(--electric); max-width: 850px; border-bottom: 8px solid var(--violet);">
    <div style="display: flex; justify-content: center; margin-bottom: 25px;">
      <svg width="80" height="80" viewBox="0 0 24 24" fill="none" stroke="var(--violet)" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round">
        <path d="M16 21v-2a4 4 0 0 0-4-4H5c-1.1 0-2 .9-2 2v2"></path>
        <circle cx="8.5" cy="7" r="4"></circle>
        <polyline points="17 11 19 13 23 9"></polyline>
      </svg>
    </div>
    <h2 style="color: var(--dark); font-size: 2.2em; margin-bottom: 20px;">Ingeniería Colaborativa</h2>
    <p style="font-size: 1.1em; color: #4B5563; margin: 0; line-height: 1.5;">
      A partir de hoy, tienen la capacidad de <b>fusionar ideas y archivos a nivel profesional</b>, protegiendo el trabajo de todos, sin importar su disciplina de origen.
    </p>
  </div>
</div>

---

<!-- Slide 9: Intro Autenticación -->
<div class="center-layout">
  <div class="eyebrow">06. Supervivencia Técnica</div>
  <h2 style="margin-bottom: 30px;">Trampas de Autenticación</h2>
  <p style="margin-bottom: 50px; text-align: center; max-width: 850px; font-size: 0.95em;">
    Cuando el reloj corre en el aula para entregar proyectos, la gestión de credenciales es el principal cuello de botella. <b>Sus proyectos no están rotos</b>; solo enfrentan protocolos de seguridad de Git.
  </p>

  <div class="grid-4" style="width: 100%;">
    <div class="card" style="padding: 20px; border-top-color: #E63946;">
      <i class="fa-solid fa-user-secret tech-icon" style="color: #E63946;"></i>
      <h4 style="margin: 0; color: var(--dark); font-size: 1em;">1. Privacidad</h4>
    </div>
    <div class="card" style="padding: 20px; border-top-color: var(--dark);">
      <i class="fa-solid fa-ghost tech-icon" style="color: var(--dark);"></i>
      <h4 style="margin: 0; color: var(--dark); font-size: 1em;">2. Llaveros</h4>
    </div>
    <div class="card" style="padding: 20px; border-top-color: var(--electric);">
      <i class="fa-solid fa-spinner tech-icon" style="color: var(--electric);"></i>
      <h4 style="margin: 0; color: var(--dark); font-size: 1em;">3. Navegador</h4>
    </div>
    <div class="card violet" style="padding: 20px;">
      <i class="fa-solid fa-network-wired tech-icon" style="color: var(--violet);"></i>
      <h4 style="margin: 0; color: var(--dark); font-size: 1em;">4. Protocolo</h4>
    </div>
  </div>
</div>

---

<!-- Slide 10: Errores 1 y 2 -->
<div class="center-layout">
  <div class="eyebrow">Diagnóstico y Solución Rápida</div>
  <h2 style="margin-bottom: 30px;">Conflictos de Identidad</h2>

  <div class="split" style="width: 100%; gap: 40px; align-items: stretch;">
    <!-- Tarjeta 1: Privacidad -->
    <div class="card" style="border-top-color: #E63946; padding: 30px; text-align: left; display: flex; flex-direction: column;">
      <div style="display: flex; justify-content: space-between; align-items: center; margin-bottom: 15px;">
        <h3 style="color: #E63946; margin: 0; font-size: 1.2em;"><i class="fa-solid fa-user-secret" style="margin-right: 10px;"></i> Privacidad</h3>
        <span style="font-size: 0.65em; background: rgba(230, 57, 70, 0.1); padding: 5px 10px; border-radius: 20px; color: #E63946; font-family: monospace;">Error 403 / Push Rechazado</span>
      </div>
      <p style="font-size: 0.8em; color: var(--dark); margin-bottom: 15px; flex-grow: 1;">
        <b>Causa:</b> Tienen activo <i>"Keep my email private"</i> en la web, pero usan su correo Tec real en GitHub Desktop.
      </p>
      <div class="card" style="padding: 15px; box-shadow: none; border-left: 4px solid var(--violet); border-top: none; background: rgba(123, 44, 191, 0.03);">
        <p style="font-size: 0.8em; margin: 0; color: var(--dark);"><b>Solución (30s):</b><br>
        Web &rarr; <code>Settings &rarr; Emails</code>. Desmarcar casilla temporalmente, o copiar el alias <i>@users.noreply...</i> en la app.</p>
      </div>
    </div>
    <!-- Tarjeta 2: Credenciales Fantasma -->
    <div class="card" style="border-top-color: var(--dark); padding: 30px; text-align: left; display: flex; flex-direction: column;">
      <div style="display: flex; justify-content: space-between; align-items: center; margin-bottom: 15px;">
        <h3 style="color: var(--dark); margin: 0; font-size: 1.2em;"><i class="fa-solid fa-ghost" style="margin-right: 10px;"></i> Fantasmas</h3>
        <span style="font-size: 0.65em; background: rgba(26, 37, 44, 0.1); padding: 5px 10px; border-radius: 20px; color: var(--dark); font-family: monospace;">Permission Denied</span>
      </div>
      <p style="font-size: 0.8em; color: var(--dark); margin-bottom: 15px; flex-grow: 1;">
        <b>Causa:</b> PC de laboratorio. El sistema retiene en caché el token de seguridad del alumno de la clase anterior.
      </p>
      <div class="card" style="padding: 15px; box-shadow: none; border-left: 4px solid var(--electric); border-top: none; background: rgba(0, 210, 252, 0.03);">
        <p style="font-size: 0.8em; margin: 0; color: var(--dark);"><b>Solución (30s):</b><br>
        <b>Win:</b> Borrar rastro en <i>Administrador de Credenciales</i>.<br>
        <b>Mac:</b> Borrar GitHub en <i>Acceso a Llaveros</i>.</p>
      </div>
    </div>
  </div>
</div>

---

<!-- Slide 11: Errores 3 y 4 -->
<div class="center-layout">
  <div class="eyebrow">Diagnóstico y Solución Rápida</div>
  <h2 style="margin-bottom: 30px;">Fricción de Conectividad</h2>

  <div class="split" style="width: 100%; gap: 40px; align-items: stretch;">
    <!-- Tarjeta 3: Bucle Infinito -->
    <div class="card" style="border-top-color: var(--electric); padding: 30px; text-align: left; display: flex; flex-direction: column;">
      <div style="display: flex; justify-content: space-between; align-items: center; margin-bottom: 15px;">
        <h3 style="color: var(--electric); margin: 0; font-size: 1.2em;"><i class="fa-solid fa-spinner" style="margin-right: 10px;"></i> Bucle Infinito</h3>
        <span style="font-size: 0.65em; background: rgba(0, 210, 252, 0.1); padding: 5px 10px; border-radius: 20px; color: var(--electric); font-family: monospace;">Login Congelado</span>
      </div>
      <p style="font-size: 0.8em; color: var(--dark); margin-bottom: 15px; flex-grow: 1;">
        <b>Causa:</b> Bloqueadores de Pop-ups en el navegador impiden que la web devuelva el token a GitHub Desktop.
      </p>
      <div class="card" style="padding: 15px; box-shadow: none; border-left: 4px solid var(--dark); border-top: none; background: rgba(26, 37, 44, 0.03);">
        <p style="font-size: 0.8em; margin: 0; color: var(--dark);"><b>Solución (20s):</b><br>
        Clic en "Permitir siempre pop-ups" en la barra superior, o forzar el inicio de sesión vía Edge / Safari limpios.</p>
      </div>
    </div>
    <!-- Tarjeta 4: SSH vs HTTPS -->
    <div class="card violet" style="padding: 30px; text-align: left; display: flex; flex-direction: column;">
      <div style="display: flex; justify-content: space-between; align-items: center; margin-bottom: 15px;">
        <h3 style="color: var(--violet); margin: 0; font-size: 1.2em;"><i class="fa-solid fa-network-wired" style="margin-right: 10px;"></i> El Botón Verde</h3>
        <span style="font-size: 0.65em; background: rgba(123, 44, 191, 0.1); padding: 5px 10px; border-radius: 20px; color: var(--violet); font-family: monospace;">Timeout SSH / Red</span>
      </div>
      <p style="font-size: 0.8em; color: var(--dark); margin-bottom: 15px; flex-grow: 1;">
        <b>Causa:</b> Intentan clonar copiando la URL de la pestaña "SSH". La red del campus bloquea el puerto 22.
      </p>
      <div class="card" style="padding: 15px; box-shadow: none; border-left: 4px solid #E63946; border-top: none; background: rgba(230, 57, 70, 0.03);">
        <p style="font-size: 0.8em; margin: 0; color: var(--dark);"><b>Solución (10s):</b><br>
        Asegurarse de que la pestaña <b>HTTPS</b> esté seleccionada antes de dar clic a "Open with GitHub Desktop".</p>
      </div>
    </div>
  </div>
</div>

---

<!-- Slide 12: Regla de Oro / Cierre -->
<div class="center-layout">
  <div style="background: var(--white); padding: 60px; border-radius: 16px; box-shadow: 0 20px 40px rgba(26,37,44,0.1); border: 2px solid var(--dark); max-width: 850px; border-bottom: 8px solid var(--electric);">
    <div style="display: flex; justify-content: center; margin-bottom: 25px;">
      <svg width="80" height="80" viewBox="0 0 24 24" fill="none" stroke="var(--dark)" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round">
        <path d="M12 22s8-4 8-10V5l-8-3-8 3v7c0 6 8 10 8 10z"></path>
      </svg>
    </div>
    <h2 style="color: var(--dark); font-size: 2.2em; margin-bottom: 20px;">Protocolo de Crisis</h2>
    <p style="font-size: 1.1em; color: #4B5563; margin: 0; line-height: 1.6;">
      Una falla de conexión no significa que corrompieron su trabajo. Es la bóveda pidiendo sus llaves.<br><br>
      <b>Mantengan la calma, identifiquen el candado y resuelvan.</b>
    </p>
  </div>
</div>

