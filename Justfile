#!/usr/bin/env -S just --justfile

default:
  @just --list

build:
    go build ./cmd/pt

tidy:
    go mod tidy
    go fmt ./...
    go vet ./...

# Update all dependencies
update:
    go get -u ./...
