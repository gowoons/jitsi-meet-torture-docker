variable "instance_size" {
  type    = string
  description = "The size of the Scaleway instances to use"

  # Available sizes with their corresponding prices are describe 
  # on https://www.scaleway.com/en/pricing/
  default = "DEV1-S"
}
