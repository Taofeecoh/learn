#!/bin/bash
# deploy_summary.sh — Weekly deploy summary report
# Reads deploy_history.csv and prints a 3-line summary

CSVFILE="$DATA_DIR/deploy_history.csv"

# Count total deployments
TOTAL=$(wc -l < "$CSVFILE" | tr -d ' ')
echo "total_deploys:${TOTAL}"

# Count failed deployments
FAILED=$(grep -c ",failed," "$CSVFILE")
echo "failed_deploys:${FAILED}"

# Count unique services that had at least one failure
AFFECTED=$(grep ",failed," "$CSVFILE" | cut -d',' -f2 | sort -u | wc -l | tr -d ' ')
echo "affected_services:${AFFECTED}" 
