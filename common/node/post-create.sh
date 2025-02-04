#!/bin/bash
if [ -f yarn.lock ]; then
  yarn install
elif [ -f pnpm-lock.yaml ]; then
  pnpm install
else
  npm install
fi