# Compliance and Investor Controls

## When to use this file

Use this file when the user asks about KYC/AML workflows, investor eligibility, wallet gating, or compliance monitoring for an RWA product.

## Suggested workflow

1. Collect investor identity data off-chain
2. Run KYC/AML screening using approved providers
3. Store attestations and review status in an internal system
4. Map approved status to on-chain policy controls
5. Review transfers, redemptions, and wallet activity against policy rules

## Policy design guidance

- Distinguish between identity verification and transaction restrictions
- Use account-level eligibility or transfer gating only when the product model actually requires it
- Keep compliance records auditable and reconcileable
- Don’t assume a single wallet address is sufficient for all investor identity checks

## Safe framing

This skill should present compliance design as a process and operating model, not as a guarantee that any tokenized asset is legally permitted in all jurisdictions.
