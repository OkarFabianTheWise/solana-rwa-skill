---
name: solana-rwa
description: Use when the user asks about tokenizing real-world assets on Solana, issuer workflows, compliance-aware token design, yield distribution, KYC/AML process design, or RWA lifecycle architecture. Covers SPV structuring, Token-2022 extensions, transfer policies, secondary market controls, and safe operational patterns.
user-invocable: true
license: MIT
---

# Solana RWA Lifecycle Skill

> Extends: [solana-dev-skill](../solana-dev/SKILL.md)

## What this skill is for

Use this skill when the user asks about:

- Real-world asset tokenization on Solana
- SPV / issuer / custody structure design
- Token-2022 extensions such as transfer hooks, interest-bearing behavior, metadata, and transfer fee logic
- KYC / AML workflow design, investor onboarding, and attestation patterns
- Yield distribution, coupon logic, and treasury controls
- Secondary market controls, transfer restrictions, and compliance review
- Permissioned environment or gated deployment architecture discussions

## Operating procedure

### 1. Classify the problem

| Area                     | Examples                                             | Skill file                                             |
| ------------------------ | ---------------------------------------------------- | ------------------------------------------------------ |
| Lifecycle / architecture | RWA flow from issuer to investor to secondary market | [overview.md](overview.md)                             |
| SPV / structuring        | vehicle design, roles, controls, custody model       | [structuring.md](structuring.md)                       |
| Token design             | Token-2022 extensions, transfer policy, metadata     | [tokenization.md](tokenization.md)                     |
| Compliance               | KYC/AML, attestation, policy enforcement             | [compliance.md](compliance.md)                         |
| Yield / payouts          | coupons, distribution, treasury ops                  | [yield-and-distribution.md](yield-and-distribution.md) |
| Secondary markets        | transfer restrictions, eligibility, market rules     | [secondary-markets.md](secondary-markets.md)           |

### 2. Keep on-chain vs off-chain boundaries explicit

- On-chain: token balances, policy checks, authority roles, transfer conditions, proofs where applicable
- Off-chain: KYC review, legal approvals, investor identity records, custody operations, off-chain yield calculations

### 3. Prefer safe and current patterns

- Default to Token-2022 when extensions are needed
- Use transfer hooks or account-level policies only when they fit the actual compliance model
- Do not claim that code alone solves legal or regulatory obligations
- Use devnet/localnet for experimentation unless the user confirms mainnet

### 4. Add risk notes when relevant

When proposing a design, explicitly call out:

- who controls issuance and redemptions
- what is enforced on-chain vs externally
- what happens if a wallet fails KYC or is frozen
- how yield or fee logic is calculated and reconciled

## Progressive disclosure

- [overview.md](overview.md) — full RWA lifecycle summary
- [structuring.md](structuring.md) — SPV, roles, custody, operating model
- [tokenization.md](tokenization.md) — Token-2022, transfer hooks, metadata, policy controls
- [compliance.md](compliance.md) — KYC/AML, attestations, investor controls
- [yield-and-distribution.md](yield-and-distribution.md) — yield logic and treasury flows
- [secondary-markets.md](secondary-markets.md) — secondary market restrictions and reporting
- [resources.md](resources.md) — reference links and recommended reading
