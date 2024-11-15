project = "security-jobs-439810"
secret_type = "service_account_key"
bindings = [
  {
    role = "roles/iam.serviceAccountUser"
    members = ["serviceAccount:hashicorp-vault-gcp@security-jobs-439810.iam.gserviceaccount.com"]
  },
  {
    role = "roles/iam.serviceAccountKeyAdmin"
    members = ["serviceAccount:hashicorp-vault-gcp@security-jobs-439810.iam.gserviceaccount.com"]
  }
]
