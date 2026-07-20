# Testing Strategy

A team using AI-assisted development should make test scope explicit and repeatable.

## Test Layers

### Unit Tests

Unit tests validate isolated logic without external dependencies.

Recommended naming:

```text
*Test
```

### Integration Tests

Integration tests validate framework wiring, database behavior, service dependencies, or end-to-end component flows.

Recommended naming:

```text
*IT
```

### Flow Tests

Flow tests validate critical business paths across APIs or services. They can be automated through scripts, API collections, or framework-level tests.

## AI-Assisted Testing

AI can help with:

- identifying missing scenarios
- generating test matrices
- drafting test cases
- organizing execution commands
- classifying defects
- summarizing coverage gaps

AI should not be treated as proof that testing happened. Reports must include executed commands, results, and known gaps.

## Low-Level Defect Examples

- missing field mapping
- null or boundary condition omission
- permission or workspace check omission
- enum or configuration mismatch
- compatibility regression
- unverified delivery

Teams may track these separately to measure engineering discipline.
