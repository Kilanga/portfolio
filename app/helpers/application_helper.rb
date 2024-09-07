module ApplicationHelper
  def technologies_list
    {
      "Ruby" => { name: "Ruby", icon: "https://cdn.jsdelivr.net/gh/devicons/devicon/icons/ruby/ruby-original.svg" },
      "Rails" => { name: "Rails", icon: "https://cdn.jsdelivr.net/gh/devicons/devicon/icons/rails/rails-original-wordmark.svg" },
      "JavaScript" => { name: "JavaScript", icon: "https://cdn.jsdelivr.net/gh/devicons/devicon/icons/javascript/javascript-original.svg" },
      "Stimulus" => { name: "Stimulus", icon: image_path("stimulus-logo.jpg") },
      "Vue.js" => { name: "Vue.js", icon: "https://cdn.jsdelivr.net/gh/devicons/devicon/icons/vuejs/vuejs-original.svg" },
      "PostgreSQL" => { name: "PostgreSQL", icon: "https://cdn.jsdelivr.net/gh/devicons/devicon/icons/postgresql/postgresql-original.svg" },
      "GitHub" => { name: "GitHub", icon: "https://cdn.jsdelivr.net/gh/devicons/devicon/icons/github/github-original.svg" },
      "Bootstrap" => { name: "Bootstrap", icon: "https://cdn.jsdelivr.net/gh/devicons/devicon/icons/bootstrap/bootstrap-original.svg" },
      "Tailwind CSS" => { name: "Tailwind CSS", icon: image_path("tailwind.jpg") }
    }
  end

  def display_technology(name)
    tech = technologies_list[name]
    if tech
      content_tag :div, class: "tech-icon-container" do
        concat image_tag(tech[:icon], alt: tech[:name], class: "tech-icon")
      end
    else
      "Technology not found"
    end
  end
end
