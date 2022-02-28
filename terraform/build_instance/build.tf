resource "scaleway_instance_ip" "build_public_ip" {}

resource "scaleway_instance_server" "build_server" {
  name = "jitsi-meet-torture-build"
  type = var.instance_size
  image = "debian_bullseye"
  ip_id = scaleway_instance_ip.build_public_ip.id

  user_data = {
    cloud-init = file("${path.module}/cloud-init.sh")
  }
}

output "build_volume_id" {
  description = "ID of the volume from which a snapshot must be done"
  value       = scaleway_instance_server.build_server.root_volume[0].volume_id
}
