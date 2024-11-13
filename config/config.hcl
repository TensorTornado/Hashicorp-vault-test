# Replace with your VM's public IP address
api_addr = "http://34.45.39.179:8200"

storage "gcs" {
  bucket     = "my-vault-storage-bucket"  # Make sure this is the correct GCS bucket name
  ha_enabled = "true"                     # Optional, enable high availability mode if needed
}

listener "tcp" {
  address     = "0.0.0.0:8200"  # This allows connections from all IPs; use with caution in production
  tls_disable = 1               # Note: Disabling TLS is NOT recommended for production environments
}

ui = true  # Enable the Vault web UI
