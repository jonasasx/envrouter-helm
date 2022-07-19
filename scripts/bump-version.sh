#!/bin/bash
set -eux

VERSION=$(cat VERSION)
echo "Current version is: $VERSION"
VERSION=$(echo "$VERSION" | awk -F. '{$NF = $NF + 1;} 1' | sed 's/ /./g')
echo "$VERSION" > VERSION
echo "New version is: $VERSION"
sed -i "s/version: \".*\"/version: \"$VERSION\"/g" charts/envrouter/Chart.yaml