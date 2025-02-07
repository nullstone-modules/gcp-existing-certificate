output "certificate_id" {
  value       = local.certificate_id
  description = "string ||| The ID of the Certificate in GCP Certificate Manager."
}

output "certificate_map_id" {
  value       = local.certificate_map_id
  description = "string ||| The ID of the Certificate Map in GCP Certificate Manager."
}

output "certificate_map_name" {
  value       = local.certificate_map_name
  description = "string ||| The name of the Certificate Map in GCP Certificate Manager."
}

output "certificate_domains" {
  value       = local.certificate_domains
  description = "list(string) ||| A list of domains issued for this certificate."
}