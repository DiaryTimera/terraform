provider "docker" {}

resource "docker_network" "app_network" {
  name = "app_network"
}

resource "docker_image" "backend" {
  name         = "diarytimera/app-docker-backend:latest"
  keep_locally = false
}

resource "docker_image" "frontend" {
  name         = "diarytimera/app-docker-frontend:latest"
  keep_locally = false
}

resource "docker_container" "backend_container" {
  name  = "backend_app"
  image = docker_image.backend.latest
  networks_advanced {
    name = docker_network.app_network.name
  }
  ports {
    internal = 8000
    external = 8000
  }
}

resource "docker_container" "frontend_container" {
  name  = "frontend_app"
  image = docker_image.frontend.latest
  networks_advanced {
    name = docker_network.app_network.name
  }
  ports {
    internal = 3000
    external = 3000
  }
}
