import os
from google.cloud import storage

# No need to specify a key path if the GOOGLE_APPLICATION_CREDENTIALS environment variable is set
client = storage.Client()
buckets = list(client.list_buckets())
print("Available Buckets:", buckets)
