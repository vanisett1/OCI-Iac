resource "oci_objectstorage_bucket" "tf_bucket" {
  compartment_id = var.compartment_id
  name           = var.bucket_name
  namespace      = data.oci_objectstorage_namespace.ns.namespace
  access_type    = var.bucket_access_type
}