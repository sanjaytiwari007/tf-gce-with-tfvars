provider "google" {
  project     = var.project_id
    region      = var.region
}
resource "google_compute_instance" "default" {
  name         = var.gce_name
  machine_type = var.machine_type
  zone         = var.zone
  boot_disk {
    initialize_params {
      image = var.image
    }
  }
    network_interface{
    network = var.project_network
      access_config {

      }
    }
}