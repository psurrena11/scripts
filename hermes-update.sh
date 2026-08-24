#!/bin/bash
# update-hermes-mini.sh
docker compose down
docker compose pull
docker compose up -d
echo "✅ Updated! Checking status..."
docker compose ps
