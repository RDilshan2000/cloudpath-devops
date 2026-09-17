# Infrastructure as Code — Terraform Configuration

## Overview
This directory contains modular Terraform definitions for bootstrapping local runtime environments and configuration states.

## Remote State Management
In production enterprise setups:
* **Backend:** S3 bucket (with server-side encryption enabled) stores the canonical `terraform.tfstate`.
* **State Locking:** DynamoDB table (`LockID`) prevents concurrent executions and state corruption.
* **Cost Controls:** Default parameters deploy zero-cost local resources; cloud resources require strict workspace-driven opt-in.

## Commands Executed
* `terraform fmt` — Canonical code formatting.
* `terraform validate` — Static syntax validation.
* `terraform plan` — Dry-run verification and execution planning.