#!/usr/bin/env bash

# Update apt-get
apt-get update -y

# Install ca-certificates
apt-get install -y ca-certificates

# Set attention to bash
exec bash
