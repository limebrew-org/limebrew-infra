#? Project Variables
PROJECT_ID           = "limebrew-378422"
REGION               = "asia-east1"
ZONE                 = "asia-east1-a"
SERVICE_ACCOUNT_JSON = "credentials/limebrew-terraform.json"
SERVICE_ACCOUNT_ID   = "limebrew-terraform@limebrew.iam.gserviceaccount.com"

#? Instance variables
INSTANCE_NAME            = "portfolio-cms-vm"
INSTANCE_MACHINE_TYPE    = "n1-standard-1"
INSTANCE_ZONE            = "asia-east1-a"
INSTANCE_BOOT_DISK_IMAGE = "ubuntu-os-cloud/ubuntu-2004-lts"
INSTANCE_BOOT_DISK_SIZE  = 10
INSTANCE_SSH_KEY_FILE    = "credentials/gcp-limebrew-terraform"
INSTANCE_NETWORK_TAGS    = ["allow-ssh", "http-server", "https-server"]

#? Network variables
NETWORK_NAME          = "limebrew-vpc"
NETWORK_PROTOCOL      = "tcp"
NETWORK_TAGS          = ["allow-ssh"]
NETWORK_SOURCE_RANGES = ["0.0.0.0/0"]
NETWORK_PORTS         = ["22", "8001", "8002"]

#? Startup Script
STARTUP_SCRIPT = "scripts/startup_script.sh"

#? Environment
ENV = "prod"