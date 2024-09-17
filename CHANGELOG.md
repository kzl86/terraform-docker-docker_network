# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [v3.0.0] - 2024-09-17

### Added
- variable "attachable"
- variable "check_duplicate"
- variable "ingress"
- variable "internal"
- variable "ipam_config"
- variable "ipam_driver"
- variable "ipam_options"
- variable "ipv6"
- variable "labels"
- variable "options"
- output "scope"

## [v2.0.0] - 2024-03-26

### Changed

- Terraform version update to v1.7.5
- Docker provider update to v3.0.2

## [v1.0.0] - 2023-06-27

### Added
- Initial base module with basic functionality
- resource "docker_network" "this"
- variable "name"
- variable "driver"
- output "name"
- output "id"