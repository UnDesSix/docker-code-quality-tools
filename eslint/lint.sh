#!/bin/sh

# Default source directory if not provided
SRC_DIR=${1:-"/src"}

echo "Running ESLint on ${SRC_DIR}"
eslint "${SRC_DIR}" --ext .js,.jsx,.ts,.tsx --fix

# Check exit code
if [ $? -eq 0 ]; then
  echo "✅ Linting completed successfully!"
else
  echo "❌ Linting found issues that need fixing."
  exit 1
fi
