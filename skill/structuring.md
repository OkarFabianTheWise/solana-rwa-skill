# SPV and Structuring Guidance

## When to use this file

Use this file when the user asks about structuring an on-chain asset product, issuer setup, custody, governance, or the legal/operational model behind the token.

## Core structuring questions

1. What exactly is being tokenized?
2. Who is the issuer or manager?
3. What role does the custodian play?
4. What records must remain off-chain?
5. How are investor rights represented?
6. What happens during redemption or transfer restrictions?

## Recommended operating model

- Keep the legal entity and investor rights documentation separate from the protocol code
- Use a clear authority model: issuer, manager, treasury, compliance, custodian
- Make sure the product design explains what is enforced on-chain and what is enforced off-chain

## Architecture checklist

- [ ] Asset ownership model is clear
- [ ] Roles and authority boundaries are documented
- [ ] Redemption / settlement mechanics are defined
- [ ] KYC and policy flows are mapped
- [ ] Reporting and reconciliation process is clear
