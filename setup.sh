#!/bin/bash
export DATABASE_URL="postgresql://postgres@localhost:5432/casting-agency"
export EXCITED="true"
export FLASK_APP=app.py
export FLASK_DEBUG=true
echo "setup.sh script executed successfully!"
