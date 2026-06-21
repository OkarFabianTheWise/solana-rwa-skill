# Yield, Treasury, and Distribution Guidance

## When to use this file

Use this file when the user asks about yield generation, coupon logic, treasury flows, or how funds are distributed to investors.

## Core questions

- How is yield calculated?
- What are the reporting and reconciliation rules?
- Who controls the treasury or payout authority?
- What is the timing for accrual and distribution?
- How are fees or reserves handled?

## Good design habits

- Keep yield calculation logic auditable and documented
- Distinguish between on-chain transfer of yield and off-chain accounting reconciliation
- Make treasury controls explicit
- Plan for failed or delayed payments
