variable "stage" {
  default = "prodution"
}

resource "random_pet" "server" {
  keepers = {
    # Generate new name on evry stage change
    stage = "${var.stage}"
  }
}

output "random_server_id" {
  value = random_pet.server.id
}
