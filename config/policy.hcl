# Allow read access to secrets in the 'secret/data/*' path
# This is limited to only read secrets, not modify or delete.
path "secret/data/*" {
  capabilities = ["read"]
}

# Allow the ability to list the keys in the 'secret/data/*' path to enumerate available secrets.
path "secret/metadata/*" {
  capabilities = ["list"]
}

# Ensure that the policy cannot write or delete anything under any secret path.
# This policy is read-only and prevents write or delete actions.
path "secret/*" {
  capabilities = ["deny"]
}

# Allow read access to list mounts and secrets engines.
path "sys/mounts" {
  capabilities = ["read"]
}
