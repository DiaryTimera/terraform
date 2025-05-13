# Exemple si tu veux rendre le nom des images ou des ports dynamiques
variable "backend_image" {
  default = "diarytimera/app-docker-backend:latest"
}

variable "frontend_image" {
  default = "diarytimera/app-docker-frontend:latest"
}
