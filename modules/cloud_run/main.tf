#TODO: google client application credentials
data "google_client_openid_userinfo" "user" {}

#TODO: Deploy image to Cloud Run
resource "google_cloud_run_v2_service" "service" {
  name     = var.service_name
  location = var.location
  ingress  = var.ingress_type
  labels = {
    "createdby" = "terraform"
  }

  template {
    max_instance_request_concurrency = var.max_instance_concurrency
    service_account                  = var.invoker_service_account
    timeout                          = "${var.request_timeout}s"

    scaling {
      min_instance_count = var.min_instance_count
      max_instance_count = var.max_instance_count
    }

    containers {
      image = var.image_url

      dynamic "env" {
        for_each = var.env_variables
        content {
          name  = env.key
          value = env.value
        }
      }

      resources {
        limits = {
          "memory" = var.vmemory_limit
          "cpu"    = var.vcpu_count
        }
      }

      ports {
        container_port = var.container_port
      }
    }
  }
  
  traffic {
    type = var.traffic_type
    percent  = var.traffic_percent
    # revision = var.is_latest_revision
  }
}

#TODO: Create public access
data "google_iam_policy" "noauth" {
  binding {
    role = "roles/run.invoker"
    members = [
      "allUsers",
    ]
  }
}

#TODO: Enable public access on Cloud Run service
resource "google_cloud_run_v2_service_iam_policy" "noauth" {
  name        = google_cloud_run_v2_service.service.name
  location    = google_cloud_run_v2_service.service.location
  policy_data = data.google_iam_policy.noauth.policy_data
}