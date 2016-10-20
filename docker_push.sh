#!/bin/bash

set -e
set -u
set -o pipefail

find . -not -path '*/\.*' -name Dockerfile -exec dirname {} \; |cut -c 3- | xargs -n1 -I{} docker push instelsdi/snap:{}