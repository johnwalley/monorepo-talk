#!/bin/bash

echo "Setting up demo"

echo "[react-rowing-blades]"

cd packages/react-rowing-blades
yarn unlink
yarn install

echo "[react-bumps-chart]"

cd ../react-bumps-chart
yarn unlink
yarn unlink react-rowing-blades
yarn install

echo "[cambridge-bumps-website]"

cd ../cambridge-bumps-website
yarn unlink react-bumps-chart
yarn install