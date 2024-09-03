resource "oci_containerengine_node_pool" "oke-node-pool" {
  # Required
  cluster_id          = oci_containerengine_cluster.oke-cluster.id
  compartment_id      = oci_identity_compartment.tf-compartment.id
  kubernetes_version  = "v1.30.1"
  name                = "general"
  
  node_config_details {
    placement_configs {
      availability_domain = data.oci_identity_availability_domains.ads.availability_domains[0].name
      subnet_id           = oci_core_subnet.vcn-private-subnet.id
    }

    size = 3  # Initial size of the node pool
  }

  node_shape = "VM.Standard2.1"

  # Using image Oracle-Linux-7.x-<date>
  # Find image OCID for your region from https://docs.oracle.com/iaas/images/ 
  node_source_details {
    image_id    = "ocid1.image.oc1.ca-toronto-1.aaaaaaaaxjncx7foeixqbz65te5hxdkd2yihbo7sehbi43mbe5guknmbcjda"
    source_type = "image"
  }

  # Optional
  initial_node_labels {
    key   = "name"
    value = "general"
  }

  # Enable autoscaling
  node_eviction_node_pool_settings {
    is_auto_scaling_enabled = true  
    min_node_count          = 1     
    max_node_count          = 3     
  }
}
