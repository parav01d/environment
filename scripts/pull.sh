#!/usr/bin/env bash

for d in repository/*/; do
    git -C "$d" pull
done