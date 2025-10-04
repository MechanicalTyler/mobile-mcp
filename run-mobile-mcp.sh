#!/bin/bash

# Script to run mobile-mcp from any directory
cd "$(dirname "$0")"

# Build if lib directory doesn't exist
if [ ! -d "lib" ]; then
    echo "Building mobile-mcp..."
    npm run build
fi

# Run the MCP server
./lib/index.js "$@"