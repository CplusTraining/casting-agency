#!/bin/bash
export DATABASE_URL="postgresql://postgres@localhost:5432/casting-agency"
export EXCITED="true"
export FLASK_APP=app.py
export FLASK_DEBUG=true
export AUTH0_DOMAIN="fsnd-stu.us.auth0.com"
export ALGORITHMS=['RS256']
export API_AUDIENCE="casting-agency"
echo "setup.sh script executed successfully!"
