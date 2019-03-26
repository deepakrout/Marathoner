#!/bin/sh

if which swiftlint >/dev/null; then
    swiftlint autocorrect
    swiftlint lint --config ${PROJECT_DIR}/.swiftlint.yml
else
echo "warning: SwiftLint not installed, download from https://github.com/realm/SwiftLint"
fi
