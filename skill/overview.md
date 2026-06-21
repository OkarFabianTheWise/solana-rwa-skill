# RWA Lifecycle Overview

## When to use this file

Use this file when the user wants a high-level architecture view of how a real-world asset can move from formation to issuance to investor distribution and ongoing operations.

## High-level lifecycle

1. **Structuring**

   - Choose the legal vehicle and operating model
   - Define issuer, custodian, manager, and compliance roles
   - Decide what is tokenized and what stays off-chain

2. **Token setup**

   - Select the token standard and extensions
   - Decide how investor eligibility, transfer restrictions, and fee logic are handled

3. **Investor onboarding**

   - Perform KYC/AML review
   - Register investor identity attestations and policy status
   - Map policies to wallet or account-level eligibility controls

4. **Issuance**

   - Mint or distribute tokens for approved investors
   - Ensure issuance rules, redemption logic, and treasury records are clear

5. **Operations**

   - Collect yield, distribute payments, handle fees, and reconcile records
   - Monitor wallet policy status and operational exceptions

6. **Secondary market / exit**
   - Apply transfer restrictions or compliance checks
   - Decide rules for transfer settlement, reporting, and redemption windows

## Good default assumptions

- Keep legal and KYC processes off-chain
- Use on-chain controls for token policy, transfers, and permissions where appropriate
- Prefer explicit lifecycle documentation over implicit trust
