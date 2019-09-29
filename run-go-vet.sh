#!/usr/bin/env bash
cd book-api
set -e
pkg=$(go list ./...)
for dir in $(echo $@|xargs -n1 dirname|sort -u); do
  go vet $pkg/$dir
done
