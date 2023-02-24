#TODO: google client application credentials
data "google_client_openid_userinfo" "user" {}


#TODO: Create Instance
resource "google_compute_instance" "vm" {
  name         = var.INSTANCE_NAME
  machine_type = var.INSTANCE_MACHINE_TYPE
  tags         = var.INSTANCE_NETWORK_TAGS
  labels       = { "managedby" : "terraform", "env" : var.ENV }
  description  = "${var.INSTANCE_NAME} instance"

  #? Metadata - public ssh key
  metadata = {
    ssh-keys = "${split("@", data.google_client_openid_userinfo.user.email)[0]}:${tls_private_key.ssh.public_key_openssh}"
  }

  #? Startup script
  metadata_startup_script = file(var.STARTUP_SCRIPT_FILE)

  #? Boot disk
  boot_disk {
    initialize_params {
      image = var.INSTANCE_BOOT_DISK_IMAGE
      size  = var.INSTANCE_BOOT_DISK_SIZE
    }
  }

  #? Network interface
  network_interface {
    network = var.NETWORK_NAME
    access_config {}
  }
}