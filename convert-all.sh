#!/bin/bash

set -e

find "in" -type f | parallel ./convert-one.sh "{}"

