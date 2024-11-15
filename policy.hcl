# Allow read access to secrets in the 'secret/data/*' path
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

# Allow the ability to read token information for the current token.
path "auth/token/lookup-self" {
  capabilities = ["read"]
}

# Allow the ability to read token capabilities for the current token.
path "sys/capabilities-self" {
  capabilities = ["read"]
}

# Allow read access to AppRole configuration
path "auth/approle/role/*" {
  capabilities = ["read"]
}
