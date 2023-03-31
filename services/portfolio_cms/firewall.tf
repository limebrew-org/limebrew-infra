#TODO: Firewall configuration
resource "google_compute_firewall" "allow_ssh" {
  name          = var.POLICY_NAME
  network       = var.NETWORK_NAME
  target_tags   = var.NETWORK_TAGS
  source_ranges = var.NETWORK_SOURCE_RANGES

  allow {
    protocol = var.NETWORK_PROTOCOL
    ports    = var.NETWORK_PORTS
  }
}