# variable "build_volume_id" {
#   type = string
#   default = "fr-par-1/aaa91671-dafd-4322-965e-3929ba648b0a"
# }
# resource "scaleway_instance_snapshot" "build_snapshot" {
#     name       = "jitsi-meet-torture-snapshot"
#     volume_id  = var.build_volume_id
# }
#scaleway_instance_snapshot.build_snapshot.id

variable "instance_size" {
  type    = string
  description = "The size of the Scaleway instances to use"

  # Available sizes with their corresponding prices are describe 
  # on https://www.scaleway.com/en/pricing/
  default = "DEV1-M"
}

variable "total_size" {
  default = 40
}

variable "snapshot_id" {
  default = "c57a3f2d-896e-4934-9d58-5c655b4ed6aa"
}
