// Minimal interactivity: smooth scroll and contact form handler
document.addEventListener('DOMContentLoaded',()=>{
  // Smooth scrolling for internal links
  document.querySelectorAll('a[href^="#"]').forEach(a=>{
    a.addEventListener('click',e=>{
      const href=a.getAttribute('href');
      if(href.length>1){
        e.preventDefault();
        const el=document.querySelector(href);
        if(el) el.scrollIntoView({behavior:'smooth',block:'start'});
      }
    });
  });

  // Contact form: validate and let the browser perform the POST to FormSubmit
  const form=document.getElementById('contactForm');
  if(form){
    form.addEventListener('submit',e=>{
      const name=form.name.value.trim();
      const email=form.email.value.trim();
      const message=form.message.value.trim();
      if(!name||!email||!message){
        e.preventDefault();
        const msg=document.getElementById('contactMessage');
        if(msg) msg.textContent='Please complete all fields.';
        return;
      }
      // Let the form submit normally; FormSubmit will redirect to thank-you page
      const msg=document.getElementById('contactMessage');
      if(msg) msg.textContent='Sending message…';
    });
  }
});
