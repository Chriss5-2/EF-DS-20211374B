resource "null_resource" "network-1" {
  provisioner "local-exec" {
    command = "echo 'Creando sub-network ${var.name} con puerto ${var.port}'"
  }

  provisioner "local-exec" {
    command = "bash '${path.module}/check_network.sh' '${var.name}' '${var.port}' '${var.region}'"
  }
}


