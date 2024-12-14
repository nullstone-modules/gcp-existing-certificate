data "google_certificate_manager_certificates" "this" {
  filter = "name:projects/${local.project_id}/locations/${var.location}/certificates/${var.certificate-name}"
}

locals {
  certificate_ids = data.google_certificate_manager_certificates.this.certificates.*.id
  certificate_id  = try(local.certificate_ids[0], "")
}

resource "google_certificate_manager_certificate_map" "this" {
  name        = local.resource_name
  labels      = local.labels
  description = "${local.resource_name}: Created by Nullstone"
}

resource "google_certificate_manager_certificate_map_entry" "this" {
  name         = local.resource_name
  labels       = local.labels
  description  = "${local.resource_name}: Created by Nullstone"
  map          = google_certificate_manager_certificate_map.this.name
  certificates = [local.certificate_id]
  matcher      = "PRIMARY"
}

locals {
  certificate_map_id   = google_certificate_manager_certificate_map.this.id
  certificate_map_name = google_certificate_manager_certificate_map.this.name
}
