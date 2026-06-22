#!/bin/bash

# AC's ChatGPT Web Debugger 0.1
# Simple HTTP request inspector for local testing

clear
echo "===================================="
echo "   AC's ChatGPT Web Debugger 0.1"
echo "===================================="
echo

read -p "URL: " URL
read -p "Method (GET/POST): " METHOD

METHOD=$(echo "$METHOD" | tr '[:lower:]' '[:upper:]')

echo
echo "[*] Sending request..."
echo

if [ "$METHOD" = "POST" ]; then
    read -p "POST Data (key=value&key2=value2): " DATA

    curl -i \
         -X POST \
         -d "$DATA" \
         "$URL"
else
    curl -i \
         -X GET \
         "$URL"
fi

echo
echo "[*] Request complete."