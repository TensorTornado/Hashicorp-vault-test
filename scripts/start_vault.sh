#!/bin/bash

CONFIG_FILE="../config/config.hcl"

# Check if the configuration file exists
if [ -f "$CONFIG_FILE" ]; then
    echo "Starting Vault server with configuration: $CONFIG_FILE"
    vault server -config="$CONFIG_FILE"
else
    echo "Error: Configuration file $CONFIG_FILE not found."
    exit 1
fi
