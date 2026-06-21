# Tokenization and Token-2022 Guidance

## When to use this file

Use this file when the user asks about choosing token standards, transfer logic, metadata, fee rules, or extensions for an RWA token.

## Token design guidance

### Prefer Token-2022 when:

- The product needs transfer fees, transfer hooks, or custom account behavior
- You need more control over authorization, metadata, or extensions
- A compliance-aware transfer model is part of the design

### Common extension patterns

- **Transfer hooks**: useful for enforcing transfer policy or triggering compliance logic
- **Interest-bearing behavior**: relevant for yield-bearing assets, but should be paired with clear accounting rules
- **Metadata / pointer extensions**: useful for product identity and disclosure data
- **Transfer fee logic**: useful for issuer, treasury, or protocol revenue policies

## Important caution

A token extension is not a substitute for regulatory review. Extensions can enforce technical policies, but they do not replace legal compliance, custody controls, or operating procedures.
