resource "scaleway_instance_ip" "build_public_ip" {}

resource "scaleway_instance_volume" "build_volume" {
    type       = "l_ssd"
    from_snapshot_id = "c57a3f2d-896e-4934-9d58-5c655b4ed6aa"
}

resource "scaleway_instance_server" "build_server" {
  type = var.instance_size
  image = "debian_bullseye"
  ip_id = scaleway_instance_ip.build_public_ip.id

  root_volume {
    size_in_gb            = var.total_size - 20
    delete_on_termination = true
  }

  additional_volume_ids   = [ scaleway_instance_volume.build_volume.id ]
}

output "ip" {
    value       = scaleway_instance_ip.build_public_ip.address
}
