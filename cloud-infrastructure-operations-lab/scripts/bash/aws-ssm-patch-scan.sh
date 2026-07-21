#!/usr/bin/env bash
set -euo pipefail
aws ssm describe-instance-patch-states --output table
aws ssm list-compliance-summaries --filters Key=ComplianceType,Values=Patch --output table
