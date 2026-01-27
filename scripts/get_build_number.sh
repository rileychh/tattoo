#!/bin/bash

if [ -z "$CI_PAT" ] || [ -z "$GITHUB_REPOSITORY" ]; then
  echo "Error: CI_PAT or GITHUB_REPOSITORY is not set."
  exit 1
fi

VAR_NAME="CURRENT_BUILD_ID"
API_URL="https://api.github.com/repos/${GITHUB_REPOSITORY}/actions/variables/${VAR_NAME}"

echo "--- Fetching current Build ID from GitHub ---"

RESPONSE=$(curl -s -L \
  -H "Authorization: Bearer $CI_PAT" \
  -H "Accept: application/vnd.github+json" \
  -H "X-GitHub-Api-Version: 2022-11-28" \
  "$API_URL")

CURRENT_VAL=$(echo "$RESPONSE" | jq -r '.value')

if [ "$CURRENT_VAL" == "null" ] || [ -z "$CURRENT_VAL" ]; then
  echo "Variable $VAR_NAME not found, initializing to 1..."
  CURRENT_VAL=0
fi

NEXT_VAL=$((CURRENT_VAL + 1))
echo "Current ID: $CURRENT_VAL -> Next ID: $NEXT_VAL"

echo "--- Updating GitHub Variable ---"
UPDATE_STATUS=$(curl -s -L -X PATCH \
  -H "Authorization: Bearer $MY_PAT" \
  -H "Accept: application/vnd.github+json" \
  -H "X-GitHub-Api-Version: 2022-11-28" \
  "$API_URL" \
  -d "{\"name\":\"$VAR_NAME\",\"value\":\"$NEXT_VAL\"}" \
  -w "%{http_code}")

if [ "$UPDATE_STATUS" -eq 204 ] || [ "$UPDATE_STATUS" -eq 200 ]; then
  echo "Successfully updated Build ID to $NEXT_VAL"
else
  echo "Failed to update variable. HTTP Status: $UPDATE_STATUS"
  exit 1
fi

echo "build_number=$NEXT_VAL" >> $GITHUB_OUTPUT