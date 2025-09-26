#!/bin/bash
set -e

# Clone repo
git clone https://github.com/titan-modz/ubuntu-console
cd ubuntu-console

# Update system
apt update -y

# Install dependencies
apt install -y zip unzip npm docker.io

# Unzip project (if needed)
unzip -o ubuntu-cockpit-fixed.zip || true

# Install Node packages
npm install

# Pull Ubuntu Docker image
docker pull ubuntu:22.04

# Start the server
npm start
