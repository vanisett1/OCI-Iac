terraform {
  backend "http" {
    address = "https://objectstorage.ca-toronto-1.oraclecloud.com/p/BJJ94G-bpakGbVwkHI72Da_aSJLa0NbJMrBpNqn95jZyFaKl2VKmNGy6ORGx4sVO/n/yzjn6ptzxviy/b/terraform-infra-state/o/compartment/terraform.tfstate"
    update_method = "PUT"
  }
}

provider "oci" {
  region = "ca-toronto-1"
}
