variable "region" {
  type    = string
  default = "ca-toronto-1"
}

variable "compartment_id"   { 
  type = string
  default = "ocid1.tenancy.oc1..aaaaaaaayi4nrz6fojj74xuuppw3ufdrvlmkg25aqxrkn2rtzlwrqgop2gtq"
}

variable "bucket_name"      {
  type = string 
  default = "terraform-infra-state"
}


variable "bucket_access_type" {
  type    = string
  default = "NoPublicAccess"
}