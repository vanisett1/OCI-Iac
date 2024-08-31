
resource "oci_identity_compartment" "tf-compartment" {
    # Required
    compartment_id = "ocid1.tenancy.oc1..aaaaaaaayi4nrz6fojj74xuuppw3ufdrvlmkg25aqxrkn2rtzlwrqgop2gtq"
    description = "Compartment for Terraform resources."
    name = "devops"
}