# AI Collaboration Contract

This contract defines how humans and AI coding assistants should collaborate in an engineering repository.

## Principles

1. AI output must be reviewable.
2. AI changes must be traceable to a requirement, spec, issue, or explicit task.
3. AI-generated code must follow local architecture and coding rules.
4. AI must not skip verification or claim tests passed without evidence.
5. Long-running work should preserve context for future maintainers.

## Required Context

Before implementing non-trivial changes, provide or discover:

- business background
- target modules
- existing architecture constraints
- affected APIs and data models
- test scope
- deployment and rollback impact

## Output Expectations

AI-assisted work should produce:

- a short design or spec for non-trivial changes
- focused code changes
- updated tests or a written test gap explanation
- verification commands and results
- documentation updates when behavior changes

## Context Management

Use a consistent place for temporary AI work notes, such as:

```text
.ai-workspace/<feature-name>/
```

Use project documentation for long-term assets:

```text
docs/specs/
docs/plans/
docs/testing/
docs/reports/
```

Temporary notes should not become the source of truth unless reviewed and promoted into stable documentation.
