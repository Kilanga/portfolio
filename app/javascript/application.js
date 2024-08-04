// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"
import "@popperjs/core"
import "bootstrap"

import { Turbo } from "@hotwired/turbo-rails"
Turbo.session.drive = true

// Ajout du script pour l'effet de panneau
document.addEventListener("DOMContentLoaded", function() {
  const panel = document.getElementById('panel');
  const realHome = document.getElementById('real-home');

  if (panel) {
    panel.addEventListener('click', function() {
      // Déplace le panneau vers le haut
      panel.style.transform = 'translateY(-100%)';
      // Affiche la vraie page d'accueil
      realHome.style.top = '0';
    });
  }
});
