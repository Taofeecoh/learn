#!/bin/bash
# incident_report.sh — Overnight error summary
# Reads app.log and prints a 3-line incident report

LOGFILE="$DATA_DIR/app.log"

# Count total error-level entries
ERROR_COUNT=$(grep -c "error" "$LOGFILE")
echo "error_count:${ERROR_COUNT}"

# Count unique IPs that generated errors
UNIQUE_IPS=$(grep "error" "$LOGFILE" | cut -d' ' -f8 | sort -u | wc -l | tr -d ' ')
echo "unique_error_ips:${UNIQUE_IPS}"

# Find the endpoint with the most errors (extract METHOD and PATH, count, pick top)
TOP_LINE=$(grep "error" "$LOGFILE" | cut -d' ' -f3,4 | sort | uniq -c | sort -rn | head -1)
TOP_EP=$(echo $TOP_LINE | cut -d' ' -f2,3)
echo "top_error_endpoint:${TOP_EP}"
