# Solana RWA Skill for Claude Code

A Claude Code skill for guiding real-world asset (RWA) tokenization workflows on Solana—from structuring and issuance to compliance, yield operations, and secondary-market controls.

> Extends [solana-dev-skill](https://github.com/solana-foundation/solana-dev-skill)

## Overview

This skill helps builders move from concept to implementation for RWA use cases such as:

- tokenized treasuries and money-market products
- private credit / invoice financing
- real estate or fund shares
- yield-bearing tokens with clear compliance boundaries

It focuses on the parts teams usually reinvent: structuring, compliance workflows, token design, issuer controls, distribution, and operational review.

## What this skill covers

- SPV / issuer structure guidance
- Token-2022 patterns for transfer hooks, interest-bearing behavior, fee logic, and metadata controls
- KYC / AML onboarding workflow design and attestation patterns
- Permissioned / SPE-style deployment design decisions
- Yield distribution and investor onboarding flow
- Secondary market controls and transfer policy review
- Security and operational checklist items for RWA products

## Installation

### Standard install

```bash
git clone git@github.com:OkarFabianTheWise/solana-rwa-skill.git
cd solana-rwa-skill
./install.sh
```

### Custom install

```bash
./install-custom.sh
```

## Repository metadata

- Repository: `git@github.com:OkarFabianTheWise/solana-rwa-skill.git`
- License: MIT
- Format: Claude Code skill addon for Solana builders

## Repository structure

```text
solana-rwa-skill/
├── CLAUDE.md
├── README.md
├── install.sh
├── install-custom.sh
├── LICENSE
├── skill/
│   ├── SKILL.md
│   ├── overview.md
│   ├── structuring.md
│   ├── tokenization.md
│   ├── compliance.md
│   ├── yield-and-distribution.md
│   ├── secondary-markets.md
│   └── resources.md
├── agents/
├── commands/
└── rules/
```

## Example prompts

- "Design an RWA issuance flow for a tokenized real estate vehicle on Solana"
- "Help me choose Token-2022 extensions for a compliant yield-bearing asset"
- "Review the transfer policy for an investor onboarding flow"
- "Map the lifecycle from SPV setup to secondary market controls"

## Important note

This skill is a workflow and architecture guide. It does not replace legal counsel, auditors, or local compliance review.
