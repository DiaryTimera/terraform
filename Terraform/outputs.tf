output "backend_container_id" {
  value = docker_container.backend_container.id
}

output "frontend_container_id" {
  value = docker_container.frontend_container.id
}
