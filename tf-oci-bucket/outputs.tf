output "bucket_name" {
  value = oci_objectstorage_bucket.tf_bucket.name
}

output "bucket_id" {
  value = oci_objectstorage_bucket.tf_bucket.bucket_id
}

# Output the bucket endpoint
output "bucket_endpoint" {
  value = "https://${data.oci_objectstorage_namespace.ns.namespace}.compat.objectstorage.${var.region}.oraclecloud.com/n/${oci_objectstorage_bucket.tf_bucket.name}/"
  description = "The endpoint URL for the OCI Object Storage bucket"
}