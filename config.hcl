# API Address for your Vault server
api_addr = "http://34.45.39.179:8200"

# Google Cloud Storage backend configuration
storage "gcs" {
  bucket     = "my-vault-stohrage-bucket"  # Ensure this matches the existing GCS bucket name exactly
  ha_enabled = "true"                      # Optional: Enable high availability if using multiple Vault nodes
}

# TCP listener configuration for Vault server
listener "tcp" {
  address     = "0.0.0.0:8200"  # Binds to all network interfaces (be cautious in production environments)
  tls_disable = 1               # Disables TLS; not recommended for production environments (use TLS for security)
}

# Enable the Vault web UI
ui = true

# Google Cloud KMS Auto-Unseal Configuration
seal "gcpckms" {
  project     = "security-jobs-439810"  # Your GCP project ID
  region      = "global"                # The region where your KMS key is located
  key_ring    = "vault-key-ring"        # The name of your keyring
  crypto_key  = "vault-key"             # The name of your KMS key
}
