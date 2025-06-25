#!/bin/bash
cd /home/kavia/workspace/code-generation/noteease-71704-4f0cbde0/notes_app_frontend_workspace/notes_app_frontend
npm run lint 
$ESLINT_EXIT_CODE
npm run build
BUILD_EXIT_CODE=$?
if [ $ESLINT_EXIT_CODE -ne 0 ] || [ $BUILD_EXIT_CODE -ne 0 ]; then
  exit 1
fi

