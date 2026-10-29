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
      <h4 style="margin: 0 0 10px 0