variable "certificate-name" {
  type        = string
  description = <<EOF
The name of the certificate registered in GCP Certificate Manager.
The certificate must be in the same project and location as this Nullstone environment.
EOF
}

variable "location" {
  type        = string
  default     = "global"
  description = <<EOF
The GCP region where the certificate is located.
By default, this is set to "global" which is most common.
EOF
}
