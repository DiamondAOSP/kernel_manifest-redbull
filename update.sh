#!/usr/bin/env bash

SUBMODULE_PATH="$PWD/GrapheneOS"

git -C "$SUBMODULE_PATH" fetch --tags

if [[ -z "$TAG" ]]; then
    echo "No TAG specified"
    exit 1
fi

echo Checking out "$TAG"
git -C "$SUBMODULE_PATH" checkout "$TAG"

sed -i -E -e "s/(\[GrapheneOS \`).*(\`\])/\1$TAG\2/" -e "s/(\(https:\/\/github\.com\/GrapheneOS\/kernel_manifest-redbull\/tree\/).*(\))/\1${TAG%-*}\2/" README.md
