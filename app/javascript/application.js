// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"
import "@popperjs/core"
import "bootstrap"
import "@fortawesome/fontawesome-free/js/all"


import { Turbo } from "@hotwired/turbo-rails"
Turbo.session.drive = true
